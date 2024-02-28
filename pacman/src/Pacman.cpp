#include <iostream>
#include "gameLogic/Game.h"


int main() {
    std::string command;
    int dots;
    int enemy;

    std::cout << "Hello, this is Pacman\n";

    command = "";
    std::cout << "Enter number of points (1 - 10)\n";
    std::cin >> dots;
    while (dots < 1 || dots > 10){
        std::cin >> dots;
        std::cout << "This is number out of bound, try again\n";
    }

    command = "";
    std::cout << "Enter number of enemy (1 - 10)\n";
    std::cin >> enemy;
    while (enemy < 1 || enemy > 10) {
        std::cin >> enemy;
        std::cout << "This is number out of bound, try again\n";
    }
    command = "";
    Game game(40,12, dots ,enemy);
    game.start();
    std::cout << "Goodbye";

    return 0;
}