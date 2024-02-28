#include "Enemy.h"

Enemy::Enemy(int x, int y) : x(x), y(y){
}

int Enemy::getX() const {
    return x;
}

int Enemy::getY() const {
    return y;
}

void Enemy::move(int x, int y) {
    this->x = x;
    this->y = y;
}

