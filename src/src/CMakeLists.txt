# Setup sources
set(CHESS_SOURCES
    main_loop.cpp
    Game.cpp
    #pice,king,etc...
    gui.cpp
)


# Build executable
add_executable(My_Chess_Game
         main.cpp )# ${CHESS_SOURCES})