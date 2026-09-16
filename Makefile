CC = gcc
CFLAGS = -Wall -Isrc

# Default target: build main program
all:
	$(CC) $(CFLAGS) src/calculator.c src/main.c -o calculator

# Target to compile and run tests
test:
	$(CC) $(CFLAGS) src/calculator.c tests/test_calculator.c -o test_runner
	./test_runner

# Clean up compiled binaries
clean:
	rm -f calculator test_runner