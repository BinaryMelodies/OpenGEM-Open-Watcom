include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../udef-l.app ../udef-s.app ../userdef.rsc

../%.app:	%.app
	cp $< ..

../userdef.rsc:	userdef.rsc
	cp userdef.rsc ..

udef-l.app:	userdef.c userdef.h 
	$(CC) -Bl $(CFLAGS) -O$@ $< ../../lib/ppdgem-l.lib

udef-s.app:	userdef.c userdef.h
	$(CC) -Bs $(CFLAGS) -O$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f udef-?.app

clean:	tidy
