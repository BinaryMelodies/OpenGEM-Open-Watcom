include ../makedefs.i

CFLAGS = -I../../include
EXEEXT = 

all:	../bin/exe2acc${EXEEXT}

../bin/exe2acc${EXEEXT}:	exe2acc${EXEEXT}
	cp exe2acc${EXEEXT} ../bin

exe2acc${EXEEXT}:	exe2acc.c
	$(CC) $(CFLAGS) $< -o $@

tidy:
	rm -f exe2acc.exe

clean:	tidy

