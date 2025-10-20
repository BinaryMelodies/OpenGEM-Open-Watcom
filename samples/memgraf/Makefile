include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../mgrf-l.app ../mgrf-s.app ../mgrf-l.acc ../mgrf-s.acc 

../%.app:	%.app
	cp $< ..

../%.acc:	%.exe
	../../bin/exe2acc $< $@


mgrf-l.app:	memgraf.c
	$(CC) -Bl $(CFLAGS) -O$@ $<  ../../lib/ppdgem-l.lib

mgrf-s.app:	memgraf.c
	$(CC) -Bs $(CFLAGS) -O$@ $< ../../lib/ppdgem-s.lib


mgrf-l.exe:	memgraf.c 
	$(CC) -Bl -DDESKACC $(CFLAGS) -Hmgrf-l.sym -O$@ $<  ../../lib/ppdgem-l.lib

mgrf-s.exe:	memgraf.c
	$(CC) -Bs -DESKACC $(CFLAGS) -Hmgrf-s.sym -O$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f mgrf-?.exe
	rm -f mgrf-?.app
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
