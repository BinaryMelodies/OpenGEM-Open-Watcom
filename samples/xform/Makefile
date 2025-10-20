include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../xform-l.app ../xform-s.app ../xform.rsc

../%.app:	%.app
	cp $< ..

../xform.rsc:	xform.rsc
	cp xform.rsc ..

xform-l.app:	xform.c xform.h
	$(CC) -Bl $(CFLAGS) -O$@ xform.c ../main-l.obj ../../lib/ppdgem-l.lib

xform-s.app:	xform.c xform.h
	$(CC) -Bs $(CFLAGS) -O$@ xform.c ../main-s.obj ../../lib/ppdgem-s.lib

tidy:
	rm -f *.obj
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f xform-?.app

clean:	tidy
