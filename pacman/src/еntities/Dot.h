//
// Created by Danil Krapivin on 14.01.2024.
//

#ifndef PACMAN_PCC_DOT_H
#define PACMAN_PCC_DOT_H


class Dot {
public:
    Dot(int x, int y);

    int getX() const;
    int getY() const;


private:
    int x;
    int y;
};


#endif //PACMAN_PCC_DOT_H
