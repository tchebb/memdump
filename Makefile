EXECUTABLE = memdump
OBJECTS = memdump.o

CFLAGS = -Wall -Wextra -pedantic -std=c99

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)

clean:
	-rm -f $(EXECUTABLE) $(OBJECTS)

.PHONY: all clean
