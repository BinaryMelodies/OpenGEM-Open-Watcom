include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../demo-l.app ../demo-s.app ../demo.rsc

../%.app:	%.app
	cp $< ..

../demo.rsc:	demo.rsc
	cp demo.rsc ..

demo-l.app:	demo.c demo.h 
	$(CC) -Bl $(CFLAGS) -O$@ $< ../main-l.obj ../../lib/ppdgem-l.lib

demo-s.app:	demo.c demo.h
	$(CC) -Bs $(CFLAGS) -O$@ $< ../main-s.obj ../../lib/ppdgem-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f demo-?.app

clean:	tidy
