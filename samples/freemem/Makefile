include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../fmem-l.acc ../fmem-s.acc ../freemem.rsc

../%.acc:	%.exe
	../../bin/exe2acc $< $@

../%.rsc:	%.rsc
	cp $< ..


fmem-l.exe:	freemem.c 
	$(CC) -ml -DDESKACC $(CFLAGS) -fm=fmem-l.map -fe=$@ $<  ../../lib/gembnd-l.lib

fmem-s.exe:	freemem.c
	$(CC) -ms -DESKACC $(CFLAGS) -fm=fmem-s.map -fe=$@ $< ../../lib/gembnd-s.lib

tidy:
	rm -f fmem-?.exe
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
