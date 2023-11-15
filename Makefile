# Makefile for Linux project homework

NAME = print_hello
CC = gcc

FLAGS = -Wall -Wextra

INCLUDE = header.h
OBJ = func.o main.o

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(FLAGS) -o $(NAME) $(OBJ)

%.o: %.c $(INCLUDE)
	$(CC) $(FLAGS) -o $@ -c $< 

install: all
	cp $(NAME) /usr/local/bin
	cp $(INCLUDE) /usr/local/include

clean:
	rm -f $(OBJ) $(NAME)

clean-all: clean
	rm -f /usr/local/bin/$(NAME)
	rm -f /usr/local/include/$(INCLUDE)


.PHONY = all install clean-all
