
include ../makedefs.i

TARGETS=demo-s.app   demo-l.app   \
	clock-s.app  clock-l.app  \
	xform-s.app  xform-l.app  \
	hello-s.app  hello-l.app  \
	hello-s.acc  hello-l.acc  \
	growbx-s.acc growbx-l.acc \
	fdtest-s.app fdtest-l.app \
	events-s.app events-l.app \
	spool-s.app  spool-l.app  \
	udef-s.app   udef-l.app   \
	fmem-s.acc   fmem-l.acc   \
	mgraf-s.app  mgraf-l.app  \
	mgraf-s.acc  mgraf-l.acc  \
	rscr-s.exe

CC = wcl
CFLAGS = -q -ox $(STDINC) -i=../include

MAIN = main-l.obj main-s.obj

all:	$(TARGETS)

main:	$(MAIN)

main-l.obj:	main.c
	$(CC) -ml $(CFLAGS) -c $<
	cp main.obj $@
	rm -f main.obj

main-s.obj:	main.c
	$(CC) -ms $(CFLAGS) -c $<
	cp main.obj $@
	rm -f main.obj

demo-s.app demo-l.app:	$(MAIN)
	make -C demo

clock-s.app clock-l.app: $(MAIN)
	make -C clock

events-s.app events-l.app: $(MAIN)
	make -C events

fdtest-s.app fdtest-l.app: $(MAIN)
	make -C fdtest

spool-s.app spool-l.app: $(MAIN)
	make -C spooler

udef-s.app udef-l.app: $(MAIN)
	make -C userdef


hello-s.app hello-l.app hello-s.acc hello-l.acc: $(MAIN)
	make -C hello

mgraf-s.app mgraf-l.app mgraf-s.acc mgraf-l.acc: 
	make -C memgraf

growbx-s.acc growbx-l.acc: $(MAIN)
	make -C growbox

fmem-s.acc fmem-l.acc: $(MAIN)
	make -C freemem

rscr-s.exe: $(MAIN)
	make -C rscreate

xform-s.app xform-l.app: $(MAIN)
	make -C xform

tidy:
	rm -f main-?.obj
	rm -f *.bak
	make -C hello tidy
	make -C demo tidy
	make -C xform tidy
	make -C growbox tidy
	make -C clock tidy
	make -C events tidy
	make -C freemem tidy
	make -C memgraf tidy
	make -C fdtest tidy
	make -C spooler tidy
	make -C userdef tidy
	make -C rscreate tidy

clean:
	rm -f main-?.obj
	rm -f *.rsc
	rm -f *.app
	rm -f *.acc
	rm -f *.exe
	rm -f *.bak
	make -C hello clean
	make -C demo clean
	make -C xform clean
	make -C growbox clean
	make -C clock clean
	make -C events clean
	make -C freemem clean
	make -C memgraf clean
	make -C fdtest clean
	make -C spooler clean
	make -C userdef clean
	make -C rscreate clean

