AFLAGS=src/* -t nes -o blinktest.o
LFLAGS=blinktest.o -t nes -o blinktest.nes

all:
	ca65 ${AFLAGS}
	ld65 ${LFLAGS}

run:
	fceux blinktest.nes

clean:
	rm -f *.o
	rm -f *.nes

