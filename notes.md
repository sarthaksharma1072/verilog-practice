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

## Full Adder using Half Adders — 13 Aug 2026
- Built the same full adder hierarchically by instantiating two half_adder modules instead of using flat gate primitives
- ha1 adds a and b; ha2 adds that partial sum with cin; an OR gate combines the two carry outputs
- Used by-name port connections (.a(w1)) so the mapping stays correct even if the port order changes later
- Compared the schematic with the flat gate version — same logic, but this one shows two half_adder blocks instead of individual gates, which is how hierarchy appears in RTL

![Full Adder using Half Adders Schematic](03_fulladder_halfadder/fulladder_halfadder_schematic.png)
