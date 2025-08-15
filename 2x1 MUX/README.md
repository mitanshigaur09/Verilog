## 🟢 Day 17 — 2:1 Multiplexer Design (Dataflow Modeling)

**🧠 Topic:** 2:1 Multiplexer Design Using Dataflow Modeling  
**🔧 Tool Used:** Cadence Xcelium on EDA Playground  

### 📌 What I did
- Designed the MUX output using `assign` statement for dataflow modeling
- Implemented a testbench to check all input combinations
- Generated `dump.vcd` file to visualize the waveform
- Verified correct output switching behavior based on the select line

### 💡 Learning Highlight
A **2:1 Multiplexer** routes one of two input signals to the output, depending on the select line (`s`).  
- When `s = 0`, `y = i0`  
- When `s = 1`, `y = i1`  
This is a key building block for larger multiplexers and control logic.

### 📊 Observation
- The waveform output matched the truth table perfectly
- No glitches or unexpected transitions were observed during switching

### 🔗 Explore More
- **EDA Playground Link:** [https://edaplayground.com/x/TVEm](https://edaplayground.com/x/TVEm)
- **GitHub Repo:** [https://github.com/mitanshigaur09/Verilog](https://github.com/mitanshigaur09/Verilog)

---

**#Verilog #VLSI #DigitalDesign #RTLdesign #FPGA #EDA #HardwareDesign #Multiplexer #LogicDesign #Cadence #Xcelium #EDAPlayground #CodingStreak #DigitalCircuits #Semiconductor**
