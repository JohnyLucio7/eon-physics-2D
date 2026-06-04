CC = g++
LANG_STD = -std=c++17
COMPILER_FLAGS = -Wall
INCLUDE_PATH = -I"./src/"
SRC_FILES = ./src/*.cpp ./src/Physics/*.cpp
LINKER_FLAGS = -lm -lSDL2 -lSDL2_image -lSDL2_gfx
OBJ_NAME = app

build:
	$(CC) $(COMPILER_FLAGS) $(LANG_STD) $(INCLUDE_PATH) $(SRC_FILES) $(LINKER_FLAGS) -o $(OBJ_NAME)

run:
	./$(OBJ_NAME)

clean:
	rm -f $(OBJ_NAME)

all: clean build run
