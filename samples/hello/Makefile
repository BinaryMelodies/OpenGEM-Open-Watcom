include ../../makedefs.i

CFLAGS = -Zg $(STDINC)
CC = pacc

all:	../hello-l.app ../hello-s.app ../hello-l.acc ../hello-s.acc 

../%.app:	%.app
	cp $< ..

../%.acc:	%.exe
	../../bin/exe2acc $< $@


hello-l.app:	hello.c
	$(CC) -Bl $(CFLAGS) -O$@ $< ../main-l.obj ../../lib/ppdgem-l.lib

hello-s.app:	hello.c
	$(CC) -Bs $(CFLAGS) -O$@ $< ../main-s.obj ../../lib/ppdgem-s.lib


hello-l.exe:	hello.c 
	$(CC) -Bl -DDESKACC $(CFLAGS) -Hhello-l.sym -O$@ $< ../main-l.obj ../../lib/ppdgem-l.lib

hello-s.exe:	hello.c
	$(CC) -Bs -DESKACC $(CFLAGS) -Hhello-s.sym -O$@ $< ../main-s.obj ../../lib/ppdgem-s.lib

tidy:
	rm -f hello-?.exe
	rm -f hello-?.app
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
