include ../../makedefs.i

CFLAGS = -q -ox $(STDINC)
CC = wcl

all:	../growbx-l.acc ../growbx-s.acc

../%.acc:	%.exe
	../../bin/exe2acc $< $@


growbx-l.exe:	growbox.c 
	$(CC) -ml -DDESKACC $(CFLAGS) -fm=growbx-l.map -fe=$@ $< ../main-l.obj ../../lib/gembnd-l.lib

growbx-s.exe:	growbox.c
	$(CC) -ms -DESKACC $(CFLAGS) -fm=growbx-s.map -fe=$@ $< ../main-s.obj ../../lib/gembnd-s.lib

tidy:
	rm -f growbx-?.exe
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj

clean:	tidy
