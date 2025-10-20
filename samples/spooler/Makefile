include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../spool-l.app ../spool-s.app ../spooler.rsc

../%.app:	%.app
	cp $< ..

../spooler.rsc:	spooler.rsc
	cp spooler.rsc ..

spool-l.app:	spooler.c spooler.h 
	$(CC) -Bl $(CFLAGS) -O$@ $< ../../lib/ppdgem-l.lib

spool-s.app:	spooler.c spooler.h
	$(CC) -Bs $(CFLAGS) -O$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f spool-?.app

clean:	tidy
