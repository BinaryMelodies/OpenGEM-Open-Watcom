include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../hello-l.app ../hello-s.app ../hello-l.acc ../hello-s.acc 

../%.app:	%.app
	cp $< ..

../%.acc:	%.exe
	../../bin/exe2acc $< $@


hello-l.app:	hello.c
	$(CC) -ml $(CFLAGS) -fe=$@ $< ../main-l.obj ../../lib/gembnd-l.lib

hello-s.app:	hello.c
	$(CC) -ms $(CFLAGS) -fe=$@ $< ../main-s.obj ../../lib/gembnd-s.lib


hello-l.exe:	hello.c 
	$(CC) -ml -DDESKACC $(CFLAGS) -fm=hello-l.map -fe=$@ $< ../main-l.obj ../../lib/gembnd-l.lib

hello-s.exe:	hello.c
	$(CC) -ms -DESKACC $(CFLAGS) -fm=hello-s.map -fe=$@ $< ../main-s.obj ../../lib/gembnd-s.lib

tidy:
	rm -f hello-?.exe
	rm -f hello-?.app
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.o

clean:	tidy
