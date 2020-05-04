CFLAGS=-Wall -Wextra -std=c11 -g -static
#CFLAGS= -Wall -std=c11 -g -static

SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

hcc: $(OBJS)
	$(CC) -o hcc $(OBJS) $(LDFLAGS)

$(OBJS): hcc.h

test: hcc
	 ./test.sh

clean:
	rm -f hcc *.o *~ tmp*

.PHONY: test clean
