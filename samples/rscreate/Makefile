include ../../makedefs.i

#
CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../rscr-s.exe

../%.exe:	%.exe
	cp $< ..

rscr-s.exe:	rscreate.c
	$(CC) -ms $(CFLAGS) -fe=$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f rscr-?.exe
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
