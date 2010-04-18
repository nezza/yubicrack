#Thomas Roth, 18.04.2010

#Compiler:
CC = gcc

#Comiler Flags:
CFLAGS += -Wall -O3


PKGFLAGS = `pkg-config --cflags --libs ykpers-1`

#Source Files:
SOURCES += yubicrack.c
OBJECTS = $(SOURCES:.cpp=.o)

#Executable name:
EXECUTABLE = yubicrack

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
		$(CC) $(LDFLAGS) $(CFLAGS) $(PKGFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
