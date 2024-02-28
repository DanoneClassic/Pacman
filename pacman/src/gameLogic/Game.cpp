#include "Game.h"

Game::Game(int width, int height, int DotsCount, int enemyCount) : isRunning(false), width(width), height(height), remainingDots(DotsCount){
    Level level(width, height, enemyCount, DotsCount);
    this->layout = level.createLevel();
    this->enemies = level.getEnemy();
    this->dots = level.getDots();
}

Game::~Game() {
    stop();
}

//#############################################  Utils  #############################################
void set_raw(bool enable) {
    static struct termios oldt, newt;
    if (enable) {
        tcgetattr(STDIN_FILENO, &oldt);
        newt = oldt;
        newt.c_lflag &= ~(ICANON);
        tcsetattr(STDIN_FILENO, TCSANOW, &newt);
    } else {
        tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
    }
}

void Game::start() {
    player.setDirection(STOP);
    isRunning = true;
    inputThread = std::thread(&Game::inputThreadFunction, this);
    gameThread = std::thread(&Game::gameThreadFunction, this);
    outputThread = std::thread(&Game::outputThreadFunction, this);

    waitForExit();
}

void Game::stop() {
    isRunning = false;

    if (gameThread.joinable()) {
        gameThread.join();
    }
    if (inputThread.joinable()) {
        inputThread.join();
    }
    if (outputThread.joinable()) {
        outputThread.join();

    }
}


//#############################################  Thread  #############################################
void Game::inputThreadFunction() {
    set_raw(true);

    char ch;
    while (isRunning) {
        if (read(STDIN_FILENO, &ch, 1) > 0) {
            std::lock_guard<std::mutex> guard(gameMutex);
            switch (ch) {
                case 'w':
                    player.setDirection(UP);
                    break;
                case 's':
                    player.setDirection(DOWN);
                    break;
                case 'a':
                    player.setDirection(LEFT);
                    break;
                case 'd':
                    player.setDirection(RIGHT);
                    break;
                case 'q':
                    isRunning = false;
                    break;
                default:
                    break;
            }
        }
    }
    set_raw(false);
}

void Game::gameThreadFunction() {
    using namespace std::chrono;
    std::srand(static_cast<unsigned int>(std::time(nullptr)));

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<int> dis(UP, STOP);

    while (isRunning) {
        auto start_time = high_resolution_clock::now();

        if (remainingDots == 0){
            std::cout << "YOU WIN\n";
            isRunning = false;
            return;
        }

        int newXPlayer = player.getX();
        int newYPlayer = player.getY();

        switch (player.getDirection()) {
            case UP:
                newYPlayer--;
                break;
            case DOWN:
                newYPlayer++;
                break;
            case LEFT:
                newXPlayer--;
                break;
            case RIGHT:
                newXPlayer++;
                break;
            case STOP:
                break;

        }
        if (isEnemy(newXPlayer,newYPlayer)){
            std::cout << "YOU DIED\n";
            isRunning = false;
            return;
        }
        if (isDot(newXPlayer,newYPlayer)){
            collectDot(newXPlayer,newYPlayer);
        }
        if (!isBorder(newXPlayer, newYPlayer)) {
            player.move(newXPlayer, newYPlayer);
        }


        for (auto& enemy : enemies) {
            Direction randomDirection = static_cast<Direction>(dis(gen));
            int newX = enemy.getX();
            int newY = enemy.getY();

            switch (randomDirection) {
                case UP:
                    newY--;
                    break;
                case DOWN:
                    newY++;
                    break;
                case LEFT:
                    newX--;
                    break;
                case RIGHT:
                    newX++;
                    break;
                default:
                    break;
            }

            if (isPlayer(newX, newY)){
                std::cout << "YOU DIED\n";
                isRunning = false;
                return;
            }

            if (!isBorder(newX, newY) && !isEnemy(newX,newY)) {
                enemy.move(newX, newY);
            }
        }

        auto end_time = high_resolution_clock::now();
        duration<double, std::milli> elapsed = end_time - start_time;
        std::this_thread::sleep_for(milliseconds(800) - elapsed);
    }
}


void Game::outputThreadFunction() {
    using namespace std::chrono;
    while (isRunning) {
        auto start_time = high_resolution_clock::now();

        printEntities();
        printLevel();
        removeEntities();

        auto end_time = high_resolution_clock::now();
        duration<double, std::milli> elapsed = end_time - start_time;
        std::this_thread::sleep_for(milliseconds(200) - elapsed);
    }
}

void Game::waitForExit() {
    char command;
    do {
        if (!isRunning){
            stop();
            return;
        }
        std::cin >> command;
    } while(command != 'q');
    isRunning = false;
}



//#############################################  Print  #############################################
void Game::printLevel() const {
    for (int y = 0; y < height; y++) {
        for (int i = 0; i < 2; i++) {
            for (int x = 0; x < width; x++) {
                if (layout[index(x, y)] == pacman)
                    std::cout << GREEN << layout[index(x, y)] << layout[index(x, y)] << RESET;
                else if (layout[index(x, y)] == entity)
                    std::cout << RED << layout[index(x, y)] << layout[index(x, y)] << RESET;
                else if(layout[index(x, y)] == dot)
                    std::cout << YELLOW << layout[index(x, y)] << layout[index(x, y)] << RESET;
                else
                    std::cout << layout[index(x, y)] << layout[index(x, y)];
            }
        }
        std::cout << std::endl;
    }
}

void Game::removeEntities() {
    std::lock_guard<std::mutex> lock(gameMutex);
    layout[index(player.getX(), player.getY())] = empty;
    for (auto enemy : enemies){
        layout[index(enemy.getX(), enemy.getY())] = empty;
    }
    for (auto dotX : dots){
        layout[index(dotX.getX(), dotX.getY())] = empty;
    }
}

void Game::printEntities() {
    std::lock_guard<std::mutex> lock(gameMutex);
    layout[index(player.getX(), player.getY())] = pacman;
    for (auto dotX : dots){
        layout[index(dotX.getX(), dotX.getY())] = dot;
    }
    for (auto enemy : enemies){
        layout[index(enemy.getX(), enemy.getY())] = entity;
    }
}



//#############################################  CheckCollision  #############################################
bool Game::isPlayer(int newX, int newY) {
    return layout[index(newX, newY)] == pacman;
}

bool Game::isEnemy(int newX, int newY) {
    return std::any_of(enemies.begin(), enemies.end(), [&](const Enemy& enemy) {
        return enemy.getX() == newX && enemy.getY() == newY;
    });
}

bool Game::isDot(int newX, int newY) {
    return std::any_of(dots.begin(), dots.end(), [&](const Dot& dot1) {
        return dot1.getX() == newX && dot1.getY() == newY;
    });
}

void Game::collectDot(int x, int y) {
    for (auto it = dots.begin(); it != dots.end();) {
        if ((*it).getX() == x && (*it).getY() == y) {
            it = dots.erase(it);
            remainingDots--;
            return;
        } else {
            ++it;
        }
    }
}


bool Game::isBorder(int newX, int newY) {
    return layout[index(newX, newY)] == border;
}