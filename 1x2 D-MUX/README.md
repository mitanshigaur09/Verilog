## 🟢 Day 17: 1x2 Demultiplexer Design Using Dataflow Modeling  

### 🧠 Topic  
1x2 Demultiplexer Design Using Dataflow Modeling  

### 🔧 Tool Used  
Cadence Xcelium on EDA Playground  

### 📌 What I did  
- Designed the Demux outputs (`y0`, `y1`) using dataflow modeling (`assign` statements)  
- Implemented a testbench to test all possible input and select combinations  
- Generated waveform (`dump.vcd`) for verification  
- Verified correct routing of input to outputs based on select line  

### 💡 Learning Highlight  
A **1x2 Demux** routes the single input (`din`) to one of the two outputs depending on the control signal (`sel`).  
It’s essentially the opposite of a multiplexer and is widely used in **data routing, memory addressing, and digital systems**.  

### 📊 Observation  
- When `sel = 0`, output `y0 = din`, `y1 = 0`  
- When `sel = 1`, output `y1 = din`, `y0 = 0`  

The waveform matched the expected truth table accurately.  

### 🔗 Explore more  
- 👉 [EDA Playground Link](https://edaplayground.com/x/86nn)  
- 👉 [GitHub Repo](https://github.com/mitanshigaur09/Verilog/new/main)  
