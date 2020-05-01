FLAGS=-Wall -Wextra -std=c11 -g -static

hcc: hcc.c

test: hcc
	./test.sh

clean:
	rm -f hcc *.o *~ tmp*

.PHONY: test clean
