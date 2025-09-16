CC = gcc
CFLAGS = -O0 -Wall -g
LDFLAGS = -lncurses

SRC = src/main.c src/util.c src/recover.c src/info.c src/screen.c \
	src/filesystem.c src/tools.c src/syscalls.c src/editor.c \
	src/menu.c src/global.c
OBJ = $(addprefix build/, $(notdir $(SRC:.c=.o)))

TARGET = nsuc

.PHONY: all nssu clean test

all: nssu

nssu: build $(OBJ)
	$(CC) -o $(TARGET) $(OBJ) $(LDFLAGS)

build:
	mkdir -p build

build/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
	rm -rf build
	find . -name "*~" -type f -delete

test: nssu
	@echo "Running unit tests..."
	@for t in tests/test_*.c; do \
		echo "Compiling $$t"; \
		$(CC) -o $${t%.c} $$t src/*.c $(LDFLAGS); \
		echo "Running $${t%.c}"; \
		$${t%.c}; \
	done
