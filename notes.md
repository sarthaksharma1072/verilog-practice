## Half Adder — 13 Aug 2026
- Built using gate primitives (XOR, AND)
- Elaborated in Vivado and verified the schematic
- RTL_XOR drives sum, RTL_AND drives carry — as expected
- Testbench pending; will add after covering it in class

![Half Adder Schematic](01_half_adder/half_adder_schematic.png)

## Full Adder — 13 Aug 2026
- Built using gate primitives: a 3-input XOR drives sum, three ANDs feed a 3-input OR to drive carry
- Declared internal wires w1, w2, w3 to hold the partial carry terms
- Verified the elaborated schematic in Vivado — gate count and connections matched the hand-drawn design
- Learned that internal wires are declared in the module body, not in the port list, since they are local to the module and not part of its interface

![Full Adder Schematic](02_full_adder/full_adder_schematic.png)
