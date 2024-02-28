#ifndef PACMAN_PCC_ENEMY_H
#define PACMAN_PCC_ENEMY_H

class Enemy{
public:
    Enemy(int x, int y);

    void move(int x, int y);

    int getX() const;
    int getY() const;


private:
    int x;
    int y;
};


#endif //PACMAN_PCC_ENEMY_H
