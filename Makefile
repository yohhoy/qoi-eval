#
# Makefile for qoi{conv,bench}
#
.PHONY: all
all: qoiconv qoibench

CFLAGS=-std=gnu99 -I stb/ -O2

qoiconv: qoi/qoiconv.c
	$(CC) $(CFALGS) $^ -o $@

qoibench: qoi/qoibench.c
	$(CC) $(CFLAGS) $^ -lpng -o $@

