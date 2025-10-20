include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../fmem-l.acc ../fmem-s.acc ../freemem.rsc

../%.acc:	%.exe
	../../bin/exe2acc $< $@

../%.rsc:	%.rsc
	cp $< ..


fmem-l.exe:	freemem.c 
	$(CC) -Bl -DDESKACC $(CFLAGS) -Hfmem-l.sym -O$@ $<  ../../lib/ppdgem-l.lib

fmem-s.exe:	freemem.c
	$(CC) -Bs -DESKACC $(CFLAGS) -Hfmem-s.sym -O$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f fmem-?.exe
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
