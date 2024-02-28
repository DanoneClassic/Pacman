#ifndef PACMAN_PCC_PLAYER_H
#define PACMAN_PCC_PLAYER_H

#include <iostream>

enum Direction {
    UP,
    DOWN,
    LEFT,
    RIGHT,
    STOP
};

class Player{
public:
    Player();

    int getX() const;
    int getY() const;
    Direction getDirection() const;
    void setDirection(Direction);

    void move(int x, int y);
private:
    int x;
    int y;
    Direction direction;
};


#endif //PACMAN_PCC_PLAYER_H
