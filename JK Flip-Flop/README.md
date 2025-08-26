# 🟢 Day 26 of My Verilog Coding Streak

## 🧠 Topic: JK Flip-Flop (Edge-Triggered)
🔧 Tool Used: Cadence Xcelium on EDA Playground  

---

## 📌 What I did
- Designed a JK Flip-Flop in Verilog with inputs `J`, `K`, `clk`, `rst` and output `Q`.  
- Created a testbench to validate **Set, Reset, Hold, and Toggle** operations.  
- Generated waveform (`jk_ff.vcd`) and verified edge-triggered behavior.  

---

## 💡 Learning Highlight
The JK Flip-Flop extends the SR functionality and avoids the invalid state:  

- `J=0, K=0 → Hold`  
- `J=0, K=1 → Reset (Q=0)`  
- `J=1, K=0 → Set (Q=1)`  
- `J=1, K=1 → Toggle (Q = ~Q)`  

This makes it one of the most widely used sequential elements.  

---

## 📊 Observation
- Correct **edge-triggered** response observed in simulation.  
- **Toggle behavior** clearly visible when `J=K=1`.  

---

## 🔗 Explore More
- 👉 [EDA Playground Link](https://www.edaplayground.com/x/VMxm)  
- 👉 [GitHub Repo](https://github.com/mitanshigaur09/verilog)  

---

🚀 *Continuing my daily RTL design experiments!*  

#Verilog #VLSI #DigitalDesign #RTLdesign #FPGA #EDA #HardwareDesign #LogicDesign #SequentialLogic #Cadence #Xcelium #EDAPlayground #Semiconductor
