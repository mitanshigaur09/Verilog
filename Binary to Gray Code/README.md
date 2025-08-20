## 🟢 Day 20: 3-bit Binary to Gray Code Converter Using Dataflow Modeling  

### 🧠 Topic  
3-bit Binary to Gray Code Converter Using Dataflow Modeling  

### 🔧 Tool Used  
Cadence Xcelium on EDA Playground  

### 📌 What I did  
- Designed the Gray code output from the binary input using **dataflow modeling** (`assign` statements)  
- Wrote a **testbench** to test all 3-bit input values (0–7)  
- Generated waveform (`dump.vcd`) for verification  
- Verified that Gray code outputs matched the expected truth table  

### 💡 Learning Highlight  
Gray code is a **special type of binary sequence** where consecutive values differ by only **one bit**.  
This property makes it highly useful in **rotary encoders, Karnaugh maps, error minimization, and digital communication systems**.  

### 📊 Observation  
- Binary `000 → Gray 000`  
- Binary `001 → Gray 001`  
- Binary `010 → Gray 011`  
- Binary `011 → Gray 010`  
- Binary `100 → Gray 110`  
- Binary `101 → Gray 111`  
- Binary `110 → Gray 101`  
- Binary `111 → Gray 100`  

The waveform confirmed correct Binary-to-Gray code conversion.  

### 🔗 Explore more  
- 👉 [EDA Playground Link](https://edaplayground.com/x/Ye_B)  
- 👉 [GitHub Repo](https://github.com/mitanshigaur/verilog)  

