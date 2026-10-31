## Conedome

**NOTE:** Gonna update the readme after working PoC.

WIP Account abstraction implementation. The repo consists of contract written in Huff, which allows executing arbitrary EVM bytecode by jumping. The idea is to have a contract that accepts arbitrary bytecode, calculates execution fingerprint, and verifies that caller and CALLs/DELEGATECALLs are performed with allowed destination addresses and function selectors.

The bytecode interpretation achieved by structuring code tables in such a way that each opcode has a 6-byte cell that that is located at predictable offset. Tables with lower size are right-padded with unreachable instructions. Tables with bigger size contain jumps to nested code tables to preserve 6-byte size restriction. Some of the opcodes are ommitted, some altered to achieve efficient execution of user intents.

Repo contains initiated Zig project. This is gonna be used for creating a lightweight library for translating user defined intents into executable bytecode as it behaves differently from what original EVM compilers produce.

Thanks to [hananbeer](https://github.com/hananbeer) and [oguimbal](https://github.com/oguimbal), I yoinked couple things from their repos.