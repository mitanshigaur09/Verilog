## 🟢 Day 19: BCD to Excess-3 Code Converter Using Dataflow Modeling  

### 🧠 Topic  
BCD to Excess-3 Code Converter Using Dataflow Modeling  

### 🔧 Tool Used  
Cadence Xcelium on EDA Playground  

### 📌 What I did  
- Designed the Excess-3 code by adding `0011` (decimal 3) to the BCD input using `assign`  
- Implemented a testbench to apply multiple BCD values  
- Generated waveform (`dump.vcd`) for verification  
- Verified correctness of Excess-3 outputs for valid BCD inputs (0000–0011 in this test)  

### 💡 Learning Highlight  
The **Excess-3 code** is a **self-complementing code** derived by adding `3` to a given BCD input.  
It is widely used in **arithmetic circuits, error detection, and digital systems** for simplifying complement operations.  

### 📊 Observation  
- `BCD = 0000 (0)` → `Excess-3 = 0011 (3)`  
- `BCD = 0001 (1)` → `Excess-3 = 0100 (4)`  
- `BCD = 0010 (2)` → `Excess-3 = 0101 (5)`  
- `BCD = 0011 (3)` → `Excess-3 = 0110 (6)`  

The waveform matched the expected conversion accurately.  

### 🔗 Explore more  
- 👉 [EDA Playground Link](https://edaplayground.com/x/A7U6)  
- 👉 [GitHub Repo](https://github.com/mitanshigaur/verilog)  
