.text

.macro dotproduct rs1, rs2, rd
.word (\rs1 << 15) | (\rs2 << 20) | (\rd << 7) | 0x0b
.endm

.globl dotproduct_insn
dotproduct_insn:

// dot product instruction where:
// rs1 = x10
// rs2 = x12
// rd  = x10

dotproduct 10, 12, 10

	ret
.size dotproduct_insn, .-dotproduct_insn
