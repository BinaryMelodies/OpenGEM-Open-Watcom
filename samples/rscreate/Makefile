include ../../makedefs.i

#
# nb: Low warning level, so that the RCS-generated file EXAMPLE.RSH 
# doesn't cause warnings
#
CFLAGS = -Zg -W5 $(STDINC)
CC = pacc

all:	../rscr-s.exe

../%.exe:	%.exe
	cp $< ..

rscr-s.exe:	rscreate.c
	$(CC) -Bs $(CFLAGS) -O$@ $< ../../lib/ppdgem-s.lib

tidy:
	rm -f rscr-?.exe
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
