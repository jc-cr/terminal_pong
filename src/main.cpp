#include <ncurses.h>
#include <unistd.h>

int main() {
    initscr();
    noecho();
    cbreak();

    mvprintw(10, 10, "Hello, ncurses!");
    refresh();

    sleep(2);

    endwin();
    return 0;
}