# 🟢 Day 31 – 4-bit Parallel-In Serial-Out (PISO) Shift Register  

This project is part of my **#Verilog Coding Streak** – Day 31.  
I implemented and verified a **4-bit Parallel-In Serial-Out (PISO) Shift Register** in Verilog using **Cadence Xcelium** on **EDA Playground**.  

---

## 📌 Project Overview  
A **PISO shift register** allows 4-bit parallel data to be loaded in a single clock cycle and then shifts it out serially, one bit per clock cycle.  
This design is fundamental in communication systems where **parallel-to-serial data conversion** is required.  

---

## 🔧 Features  
- ✅ 4-bit PISO shift register with **parallel load** and **serial output**  
- ✅ Testbench to validate **loading** and **shifting** operations  
- ✅ Generated simulation log and waveform (`piso.vcd`)  
- ✅ Verified correct serial output sequence  

---

## 🧠 Learning Highlight  
The **PISO shift register** demonstrates the conversion of parallel inputs into a **time-sequenced serial stream**, which is crucial in digital communication and interface designs.  

---

## 📊 Observations  
- Parallel data is loaded into the register **in a single clock cycle**  
- Data is shifted out **serially on subsequent cycles**  
- The **serial output sequence matches the expected data stream**  

---

## 📂 Files in this Project  
- `piso.v` – Verilog RTL for 4-bit PISO shift register  
- `piso_tb.v` – Testbench for validation  
- `piso.vcd` – Waveform output from simulation  

---

## ▶️ Run the Simulation  
Try it out on **EDA Playground**:  
👉 [Open in EDA Playground](https://edaplayground.com/x/GeBV)  

Or explore the full repo here:  
👉 [GitHub Repo](https://github.com/mitanshigaur09/verilog)  

---

## 🚀 About This Streak  
I’m sharing **daily RTL design experiments** to strengthen Verilog, RTL design, and digital logic concepts.  
Follow along for more projects!  

---

### 📌 Tags  
#Verilog #VLSI #DigitalDesign #RTLdesign #FPGA #EDA #HardwareDesign #CodingStreak #SequentialLogic #Cadence #Xcelium #EDAPlayground #Semiconductor
