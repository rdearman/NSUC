#include <ncurses.h>

void show_menu(void) {
    WINDOW *win = newwin(10, 30, 5, 10);
    box(win, 0, 0);
    waddstr(win, "Popup Menu (press any key)");
    wrefresh(win);
    wgetch(win);
    delwin(win);
}
