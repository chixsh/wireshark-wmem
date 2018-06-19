# directories with files
INCDIR = -I../ -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include
PROGRAMNAME = wmem_test

CC ?= gcc
CFLAGS= -Wall -g $(INCDIR) 
STATICLIBS = ../libwmem.a

_OBJS = wmem_test.o

# Replace all filenames in objects with a relative path
OBJS = $(patsubst %, %, $(_OBJS))

%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS) 

all: $(PROGRAMNAME) 

$(PROGRAMNAME): $(OBJS) 
	$(CC) -o $@ $^ $(CFLAGS) $(STATICLIBS) -lglib-2.0

clean:
	rm -f *.o $(PROGRAMNAME)
