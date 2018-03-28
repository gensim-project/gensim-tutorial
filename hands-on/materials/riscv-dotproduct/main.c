#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

uint32_t dotproduct_insn(uint32_t a1, uint32_t a2, uint32_t b1, uint32_t b2);

uint32_t dotproduct_c(uint32_t a1, uint32_t a2, uint32_t b1, uint32_t b2)
{
	return (a1 * a2) + (b1 * b2);
}

int main(int argc, char **argv)
{
	uint32_t a1 = rand() % UINT32_MAX;
	uint32_t a2 = rand() % UINT32_MAX;
	uint32_t b1 = rand() % UINT32_MAX;
	uint32_t b2 = rand() % UINT32_MAX;
	
	uint32_t c_result = dotproduct_c(a1, a2, b1, b2);
	uint32_t asm_result = dotproduct_insn(a1, a2, b1, b2);
	
	printf("Operands: (%u, %u) (%u, %u)\n", a1, a2, b1, b2);
	printf("C Result: %u\n", c_result);
	printf("Asm Result: %u\n", asm_result);
	
	return 0;
}
