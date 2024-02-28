#include <__random/random_device.h>
#include "Level.h"

Level::Level(int w, int h, int enemyCount, int dotsCount) : width(w), height(h), enemiesCount(enemyCount), remainingDots(dotsCount){
    layout.resize(width * height, border);
    visited.resize(width * height, false);
}

std::vector<char> Level::createLevel() {
    srand(time(nullptr));
    recursiveBacktracking(1, 1);
    createEnemys(enemiesCount);
    createDots();
    return layout;
}

void Level::recursiveBacktracking(int x, int y) {
    visited[index(x, y)] = true;
    layout[index(x, y)] = empty;

    auto neighbors = getNeighbors(x, y);
    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(neighbors.begin(), neighbors.end(), g);

    for (auto& [nx, ny] : neighbors) {
        if (canVisit(nx, ny)) {
            layout[index((x + nx) / 2, (y + ny) / 2)] = empty;
            recursiveBacktracking(nx, ny);
        }
    }
}

bool Level::canVisit(int x, int y) const {
    if (x <= 0 || x >= width - 1 || y <= 0 || y >= height - 1) return false;
    return !visited[index(x, y)];
}

std::vector<std::pair<int, int>> Level::getNeighbors(int x, int y) const {
    std::vector<std::pair<int, int>> neighbors;

    if (x - 2 > 0) neighbors.emplace_back(x - 2, y);
    if (x + 2 < width) neighbors.emplace_back(x + 2, y);
    if (y - 2 > 0) neighbors.emplace_back(x, y - 2);
    if (y + 2 < height) neighbors.emplace_back(x, y + 2);

    return neighbors;
}

void Level::createEnemys(int count) {
    std::vector<std::pair<int, int>> emptyCells;

    for (int x = 0; x < width; ++x) {
        for (int y = 0; y < height; ++y) {
            if (layout[index(x, y)] == empty) {
                emptyCells.emplace_back(x, y);
            }
        }
    }

    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(emptyCells.begin(), emptyCells.end(), g);

    for (int i = 0; i < count && i < emptyCells.size(); ++i) {
        int x = emptyCells[i].first;
        int y = emptyCells[i].second;
        enemies.emplace_back(x, y);
    }
}

void Level::createDots() {
    std::vector<std::pair<int, int>> emptyCells;

    for (int x = 0; x < width; ++x) {
        for (int y = 0; y < height; ++y) {
            if (layout[index(x, y)] == empty) {
                emptyCells.emplace_back(x, y);
            }
        }
    }
    std::random_device rd;
    std::mt19937 g(rd());
    std::shuffle(emptyCells.begin(), emptyCells.end(), g);

    for (int i = 0; i < remainingDots && i < emptyCells.size(); ++i) {
        int x = emptyCells[i].first;
        int y = emptyCells[i].second;
        dots.emplace_back(x,y);
    }
}

std::vector<Enemy> Level::getEnemy() {
    return enemies;
}

std::vector<Dot> Level::getDots() {
    return dots;
}