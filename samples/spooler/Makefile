include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../spool-l.app ../spool-s.app ../spooler.rsc

../%.app:	%.app
	cp $< ..

../spooler.rsc:	spooler.rsc
	cp spooler.rsc ..

spool-l.app:	spooler.c spooler.h 
	$(CC) -ml $(CFLAGS) -fe=$@ $< ../../lib/gembnd-l.lib

spool-s.app:	spooler.c spooler.h
	$(CC) -ms $(CFLAGS) -fe=$@ $< ../../lib/gembnd-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f spool-?.app

clean:	tidy
