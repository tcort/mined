mined: mined1.o mined2.o mined.h
	cc -o mined mined1.o mined2.o -lncurses

mined1.o: mined1.c mined.h
	cc -Wall -ansi -pedantic -o mined1.o -c mined1.c

mined2.o: mined2.c
	cc -Wall -ansi -pedantic -o mined2.o -c mined2.c
