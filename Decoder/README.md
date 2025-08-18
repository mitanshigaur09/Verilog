## 🟢 Day 19: 2-to-4 Decoder Using Behavioral Modeling  

### 🧠 Topic  
2-to-4 Decoder Using Behavioral Modeling  

### 🔧 Tool Used  
Cadence Xcelium on EDA Playground  

### 📌 What I did  
- Designed the 2-to-4 Decoder outputs using **behavioral modeling** (`case` statement)  
- Implemented a **testbench** to test all input combinations (00, 01, 10, 11)  
- Generated waveform (`dump.vcd`) for verification  
- Verified correct **one-hot output behavior**  

### 💡 Learning Highlight  
A **2-to-4 Decoder** activates exactly **one output line** for every unique 2-bit input combination.  
It is widely used in **memory addressing, instruction decoding, and control logic** in digital systems.  

### 📊 Observation  
- Input `00` → Output `0001`  
- Input `01` → Output `0010`  
- Input `10` → Output `0100`  
- Input `11` → Output `1000`  

The waveform perfectly matched the expected **truth table**.  

### 🔗 Explore more  
- 👉 [EDA Playground Link](https://edaplayground.com/x/wWme)  
- 👉 [GitHub Repo](https://github.com/mitanshigaur/verilog)  
