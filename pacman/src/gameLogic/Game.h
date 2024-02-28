#ifndef PACMAN_PCC_GAME_H
#define PACMAN_PCC_GAME_H

#include <thread>
#include <mutex>
#include <vector>
#include "Level.h"
#include "../еntities/Player.h"
#include "../еntities/Enemy.h"
#include <iostream>
#include <chrono>
#include <random>
#include <termios.h>
#include <unistd.h>
#include <fcntl.h>

class Game {
public:
    Game(int width, int height, int DotsCount, int enemyCount);
    ~Game();
    void start();
    void stop();

private:

//#############################################  Thread  #############################################
    void inputThreadFunction();
    void gameThreadFunction();
    void outputThreadFunction();
    void waitForExit();

    std::thread inputThread;
    std::thread gameThread;
    std::thread outputThread;

    std::mutex gameMutex;
    std::condition_variable gameCondition;
    std::atomic<bool> isRunning;
    bool stopCalled = false;


//#############################################  Entity  #############################################
    Player player;
    std::vector<Enemy> enemies;
    std::vector<char> layout;
    std::vector<Dot> dots;
    int height{};
    int width{};

//#############################################  Print  #############################################
    const std::string RESET = "\033[0m";
    const std::string RED = "\033[31m";
    const std::string GREEN = "\033[32m";
    const std::string YELLOW = "\033[33m";
    const std::string BLUE = "\033[34m";

    char empty = ' ';
    char dot = '*';
    char pacman = '@';
    char entity = '#';
    char border = '|';
    void printLevel() const;

//#############################################  Compute  #############################################
    int remainingDots;
    void collectDot(int x, int y);
    int index(int x, int y) const { return y * width + x; }
    bool isBorder(int newX, int newY);
    bool isEmptyCell(int newX, int newY);
    bool isPlayer(int newX, int newY);
    bool isEnemy(int newX, int newY);
    bool isDot(int newX, int newY);

//#############################################  Move  #############################################
    void printEntities();
    void removeEntities();
    struct termios old_settings;


};

#endif //PACMAN_PCC_GAME_H
