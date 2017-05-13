CC := $(CROSS_COMPILE)gcc

PROGS := mei-amt-check

all: $(PROGS)

clean:
	rm -fr $(PROGS)
