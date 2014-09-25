@echo off
set GOFER=\Progs\Gofer\Lib\standard.prelude
\Progs\Gofer\Lib\Gofc %1.gs
gcc -O %1.c \Progs\Gofer\Lib\runtime.o -o %1.exe -lm
del %1.c
emxbind -s %1.exe
