include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../fdtest-l.app ../fdtest-s.app ../fdtest.rsc

../%.app:	%.app
	cp $< ..

../fdtest.rsc:	fdtest.rsc
	cp fdtest.rsc ..

fdtest-l.app:	fdtest.c fdtest.h 
	$(CC) -Bl $(CFLAGS) -O$@ $< ../../lib/ppdgem-l.lib

fdtest-s.app:	fdtest.c fdtest.h
	$(CC) -Bs $(CFLAGS) -O$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f fdtest-?.app

clean:	tidy
