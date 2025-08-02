# Makefile for writer application

# Cross compiler prefix.  Can be overridden on the command line.
# Example: make CROSS_COMPILE=aarch64-none-linux-gnu-
CROSS_COMPILE ?= 

# C Compiler and flags
CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -g

# The target executable
TARGET = writer

# Default target rule. This is the one that runs when you just type "make".
.PHONY: all
all: $(TARGET)

# Rule to build the writer application.
# It depends on the source file writer.c.
$(TARGET): writer.c
	$(CC) $(CFLAGS) -o $(TARGET) writer.c

# Clean target rule. Removes build artifacts.
.PHONY: clean
clean:
	rm -f $(TARGET) *.o