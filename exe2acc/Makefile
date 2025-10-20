include ../makedefs.i

CFLAGS = -q -ox $(STDINC)

all:	../bin/exe2acc.exe

../bin/exe2acc.exe:	exe2acc.exe
	cp exe2acc.exe ../bin

exe2acc.exe:	exe2acc.c
	wcl $(CFLAGS) $<

tidy:
	rm -f exe2acc.exe

clean:	tidy

