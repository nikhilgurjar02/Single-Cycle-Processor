# Single-Cycle-Processor

# Single-Cycle Processor

## Encoding Scheme
- **R-type**: `opcode(6)` — `rs(5)` — `rt(5)` — `rd(5)` — `shamt(5)` — `funct(6)`  
- **I-type**: `opcode(6)` — `rs(5)` — `rt(5)` — `immediate(16)`  
- **J-type**: `opcode(6)` — `address(26)`

---

## Instructions Implemented

### R-type Instructions
- **Add**
- **Sub**
- **OR**
- **AND**
- **Set Less Than**
- **Shift Left Logical**
- **Jump Register**

### I-type Instructions
- **Load Word (lw)**
- **Store Word (sw)**
- **Branch on Equal (beq)**
- **Branch on Not Equal (bne)**
- **Set Less Than Immediate (slti)**
- **Load Upper Immediate (lui)**

### J-type Instructions
- **Jump (j)**

---

## Opcodes

### R-type
- **Opcode**: `000000`

| Function Code | Operation          |
|---------------|--------------------|
| `000000`      | ADD                |
| `000001`      | SUB                |
| `000010`      | AND                |
| `000011`      | OR                 |
| `000100`      | SLT                |
| `000101`      | SLL                |
| `000110`      | Jump Register (JR) |

---

### I-type
- **lw**:  `100011`  
- **sw**:  `101011`  
- **beq**: `000100`  
- **bne**: `000101`  
- **slti**: `001010`  
- **lui**: `001111`  

---

### J-type
- **j**: `000010`  





Below is the Architecture used in my Single Cycle Processor
![alt text](https://github.com/nikhilgurjar02/Single-Cycle-Processor/blob/main/MIPS_Edited1.png?raw=true)



