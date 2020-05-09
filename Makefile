CC = /usr/bin/gcc
CFLAGS = -O2 -g -Wall -std=c99
YACC = bison -d
OBJS = burg.o grammar.o

burg: $(OBJS)
	$(CC) $(OBJS) -o $@

grammar.c: grammar.y
	$(YACC) $< -o $@

clean::
	@rm -f burg $(OBJS) grammar.c

grammar.c: burg.h

burg.c: burg.h

