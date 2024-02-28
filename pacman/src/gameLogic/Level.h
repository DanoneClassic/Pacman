#ifndef PACMAN_PCC_LEVEL_H
#define PACMAN_PCC_LEVEL_H

#include <iostream>
#include <cstdlib>
#include <ctime>
#include <algorithm>
#include <random>
#include "../еntities/Enemy.h"
#include "../еntities/Dot.h"

class Level {
public:
    Level(int width, int height, int enemyCount, int dotsCount);
    std::vector<char> createLevel();
    std::vector<Enemy> getEnemy();
    std::vector<Dot> getDots();

private:
    int width;
    int height;

    char empty = ' ';
    char dot = '*';
    char pacman = 'G';
    char entity = '#';
    char border = '|';
    int remainingDots;
    int enemiesCount;

    std::vector<char> layout;
    std::vector<Dot> dots;
    std::vector<bool> visited;
    std::vector<Enemy> enemies;

    void recursiveBacktracking(int x, int y);
    bool canVisit(int x, int y) const;
    std::vector<std::pair<int, int>> getNeighbors(int x, int y) const;

    void createEnemys(int count);
    void createDots();

    int index(int x, int y) const { return y * width + x; }

};

#endif //PACMAN_PCC_LEVEL_H
