include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../udef-l.app ../udef-s.app ../userdef.rsc

../%.app:	%.app
	cp $< ..

../userdef.rsc:	userdef.rsc
	cp userdef.rsc ..

udef-l.app:	userdef.c userdef.h 
	$(CC) -ml $(CFLAGS) -fe=$@ $< ../../lib/ppdgem-l.lib

udef-s.app:	userdef.c userdef.h
	$(CC) -ms $(CFLAGS) -fe=$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f udef-?.app

clean:	tidy
