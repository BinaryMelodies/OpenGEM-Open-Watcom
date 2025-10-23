include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../demo-l.app ../demo-s.app ../demo.rsc

../%.app:	%.app
	cp $< ..

../demo.rsc:	demo.rsc
	cp demo.rsc ..

demo-l.app:	demo.c demo.h 
	$(CC) -ml $(CFLAGS) -fe=$@ $< ../main-l.obj ../../lib/gembnd-l.lib

demo-s.app:	demo.c demo.h
	$(CC) -ms $(CFLAGS) -fe=$@ $< ../main-s.obj ../../lib/gembnd-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f demo-?.app

clean:	tidy
