include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../clock-l.app ../clock-s.app ../clock-l.acc ../clock-s.acc 

../%.app:	%.app
	cp $< ..

../%.acc:	%.exe
	../../bin/exe2acc $< $@


clock-l.app:	clock.c
	$(CC) -ml $(CFLAGS) -fe=$@ $<  ../../lib/gembnd-l.lib

clock-s.app:	clock.c
	$(CC) -ms $(CFLAGS) -fe=$@ $< ../../lib/gembnd-s.lib


clock-l.exe:	clock.c 
	$(CC) -ml -DDESKACC $(CFLAGS) -fm=clock-l.map -fe=$@ $<  ../../lib/gembnd-l.lib

clock-s.exe:	clock.c
	$(CC) -ms -DESKACC $(CFLAGS) -fm=clock-s.map -fe=$@ $< ../../lib/gembnd-s.lib

tidy:
	rm -f clock-?.exe
	rm -f clock-?.app
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.o

clean:	tidy
