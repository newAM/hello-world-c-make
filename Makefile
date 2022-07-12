CC = gcc
CFLAGS = -g -W -Wall
SRCS = hello.c main.c
OBJS = $(SRCS:.c=.o)
DEPS = hello.h

.PHONY: all clean

all: hello

clean:
	rm -f hello $(OBJS)

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)
