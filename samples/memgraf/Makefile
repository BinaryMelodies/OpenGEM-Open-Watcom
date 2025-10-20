include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../mgrf-l.app ../mgrf-s.app ../mgrf-l.acc ../mgrf-s.acc 

../%.app:	%.app
	cp $< ..

../%.acc:	%.exe
	../../bin/exe2acc $< $@


mgrf-l.app:	memgraf.c
	$(CC) -ml $(CFLAGS) -fe=$@ $<  ../../lib/ppdgem-l.lib

mgrf-s.app:	memgraf.c
	$(CC) -ms $(CFLAGS) -fe=$@ $< ../../lib/ppdgem-s.lib


mgrf-l.exe:	memgraf.c 
	$(CC) -ml -DDESKACC $(CFLAGS) -fm=mgrf-l.map -fe=$@ $<  ../../lib/ppdgem-l.lib

mgrf-s.exe:	memgraf.c
	$(CC) -ms -DESKACC $(CFLAGS) -fm=mgrf-s.map -fe=$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f mgrf-?.exe
	rm -f mgrf-?.app
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
