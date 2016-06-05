
prefix=/usr/local/voaacenc

CC=$(CROSS_COMPILE)gcc
CXX=$(CROSS_COMPILE)g++

INC=-Iinclude -Ibasic_op -Iinc

OPT=-O2 $(INC) -fPIC

CFLAGS =-Wall $(OPT) 
CXXFLAGS =-Wall $(OPT)


SOURCES += AAC_E_SAMPLES.c

include basic_op/Makefile
include src/Makefile

OBJS += $(patsubst %cpp,%o,$(filter %cpp ,$(SOURCES))) 
OBJS +=$(patsubst %c,%o,$(filter %c ,$(SOURCES)))

TARGET :=all

all:  voaacenc libvoaacenc

voaacenc: $(OBJS)
	$(CC) $(LIBS_DIR) -o $@ $(OBJS) $(LIBS)
	
libvoaacenc: $(OBJS)
	$(CC) $(LIBS_DIR) -o $@.so -shared $(OBJS) $(LIBS)

help:

install:
	mkdir -p $(prefix)
	mkdir -p $(prefix)/include
	mkdir -p $(prefix)/lib
	mkdir -p $(prefix)/bin
	
	cp -r include $(prefix)
	cp voaacenc $(prefix)/bin/
	cp libvoaacenc.so $(prefix)/lib/

clean:
	rm -rf $(OBJS) voaacenc libvoaacenc.so
	
%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@ 

%.o:%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@ 
