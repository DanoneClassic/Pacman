cmake_minimum_required(VERSION 3.26)
project(pacman_pcc)

set(CMAKE_CXX_STANDARD 17)

add_executable(pacman_pcc
        src/gameLogic/Game.cpp
        src/gameLogic/Game.h
        src/еntities/Player.cpp
        src/еntities/Player.h
        src/еntities/Enemy.cpp
        src/еntities/Enemy.h
        src/gameLogic/Level.cpp
        src/gameLogic/Level.h
        src/Pacman.cpp
        src/еntities/Dot.cpp
        src/еntities/Dot.h
)
