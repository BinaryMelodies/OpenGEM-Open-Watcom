include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../xform-l.app ../xform-s.app ../xform.rsc

../%.app:	%.app
	cp $< ..

../xform.rsc:	xform.rsc
	cp xform.rsc ..

xform-l.app:	xform.c xform.h
	$(CC) -ml $(CFLAGS) -fe=$@ xform.c ../main-l.obj ../../lib/gembnd-l.lib

xform-s.app:	xform.c xform.h
	$(CC) -ms $(CFLAGS) -fe=$@ xform.c ../main-s.obj ../../lib/gembnd-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.o
	rm -f xform-?.app

clean:	tidy
