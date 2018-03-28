CFLAGS=-static

all : hello hello-riscv

hello:
	arm-unknown-linux-gnueabi-gcc $(CFLAGS) hello.c -o hello

hello-riscv:
	riscv32-unknown-linux-gnu-gcc $(CFLAGS) hello.c -o hello-riscv

clean:
	rm -f hello
