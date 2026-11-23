## Conedome

**NOTE:** Gonna update the readme after working PoC.

The repo consists of contract written in Huff, which allows executing arbitrary EVM bytecode.

The bytecode interpretation achieved by structuring code tables in such a way that each opcode has a 6-byte cell that that is located at predictable offset. Tables with lower size are right-padded with unreachable instructions. Tables with bigger size contain jumps to nested code tables to preserve 6-byte size restriction. Some of the opcodes are ommitted, some altered to achieve efficient execution of user intents.