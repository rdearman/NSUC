#include <ncurses.h>
#include "prj.h"

int main(int argc, char **argv) {
    initscr();
    cbreak();
    noecho();
    keypad(stdscr, TRUE);

    int ch;
    while ((ch = wgetch(stdscr)) != 'q') {
        if (ch == '/') {
            show_menu();
        }
    }

    endwin();
    return 0;
}
