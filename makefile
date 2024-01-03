CC=g++-4.6
LAZY=/home/twigger/lazy-c++/lzz -hx hh
CFLAGS=-c -Wall -g
LDFLAGS=
RAWSOURCES=stt_obj.lzz
SOURCES=$(RAWSOURCES:.lzz=.cpp)
OBJECTS=$(RAWSOURCES:.lzz=.o)
	
%.cpp %.hh: %.lzz
	$(LAZY) $<

all: $(SOURCES) $(OBJECTS)
	
.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.cpp *.hh *.o

