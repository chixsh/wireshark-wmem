CFLAGS=-Wall -g 
LIBS=libwmem.a
CC ?= gcc
RANLIB ?= ranlib
AR ?= ar
INC = -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include

SOURCES = $(wildcard *.c *.cpp)
OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCES)))

all:$(LIBS)
	
$(LIBS): $(OBJS) 
	$(AR) rc $@ $(OBJS)
	-@ ($(RANLIB) $@ || true) >/dev/null 2>&1
	
%.o: %.c	
	$(CC) $(CFLAGS)$(INC) -c -o $@ $<	

clean:
	rm -f *.o libwmem.a
