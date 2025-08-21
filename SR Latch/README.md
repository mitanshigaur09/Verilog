## 🟢 Day 21: SR Latch Using NOR Gates  

### 🧠 Topic  
SR Latch Using NOR Gates  

### 🔧 Tool Used  
Cadence Xcelium on EDA Playground  

### 📌 What I did  
- Designed the SR latch (`Q`, `Qbar`) using cross-coupled NOR gates  
- Implemented a testbench to test all input cases (`S=0, R=0`, `S=1, R=0`, `S=0, R=1`, `S=1, R=1`)  
- Generated waveform (`dump.vcd`) for verification  
- Verified Set, Reset, Hold, and Invalid states of the latch  

### 💡 Learning Highlight  
The **SR Latch** is the most basic **sequential circuit** and acts as a **1-bit memory cell**.  
It forms the building block for **flip-flops, registers, and memory elements**.  

- `S=1, R=0 → Q=1 (Set)`  
- `S=0, R=1 → Q=0 (Reset)`  
- `S=0, R=0 → Hold (Previous State)`  
- `S=1, R=1 → Invalid (Undefined)`  

### 📊 Observation  
- Waveform showed correct **Set, Reset, and Hold** operations.  
- Invalid condition (`S=1, R=1`) resulted in an undefined state, as expected.  

### 🔗 Explore more  
- 👉 [EDA Playground Link](https://edaplayground.com/x/DMtW)  
- 👉 [GitHub Repo](https://github.com/mitanshigaur/verilog)  
