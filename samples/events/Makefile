include ../../makedefs.i

CFLAGS = $(STDINC)
CC     = pacc
SOURCE = events.c meta_f.c meta_out.c meta_r.c meta_t.c wnd.c xmain.c
HDRS   = events.h meta.h proto.h types.h window.h

all:	../events-l.app ../events-s.app ../events.rsc ../events.gem

../%.app:	%.app
	cp $< ..

../events.rsc:	events.rsc
	cp events.rsc ..

../events.gem:	events.gem
	cp events.gem ..

events-l.app:	$(SOURCE) $(HDRS)
	$(CC) -Bl $(CFLAGS) -O$@ $(SOURCE) ../../lib/ppdgem-l.lib

events-s.app:	$(SOURCE) $(HDRS)
	$(CC) -Bs $(CFLAGS) -O$@ $(SOURCE) ../../lib/ppdgem-s.lib

tidy:
	rm -f *.bak
	rm -f *.sdb
	rm -f *.sym
	rm -f *.map
	rm -f *.obj
	rm -f events-?.app

clean:	tidy
