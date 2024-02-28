#include "Player.h"

Player::Player() {
    x = 1;
    y = 1;
}

int Player::getX() const {
    return x;
}

int Player::getY() const {
    return y;
}

Direction Player::getDirection() const {
    return direction;
}

void Player::setDirection(Direction newDirection) {
    this->direction = newDirection;
}

void Player::move(int x, int y) {
    this->x = x;
    this->y = y;
}
