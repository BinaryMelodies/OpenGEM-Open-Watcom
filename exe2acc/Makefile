include ../makedefs.i

CFLAGS = -Zg -O $(STDINC)

all:	../bin/exe2acc.exe

../bin/exe2acc.exe:	exe2acc.exe
	cp exe2acc.exe ../bin

exe2acc.exe:	exe2acc.c
	pacc $(CFLAGS) $<

tidy:
	rm -f exe2acc.exe

clean:	tidy

