# 🟢 Day 32: 4-bit Parallel-In Parallel-Out (PIPO) Shift Register  

## 📖 Overview  
On **Day 32** of my **#Verilog Coding Streak**, I implemented and verified a **4-bit Parallel-In Parallel-Out (PIPO) Shift Register** in Verilog.  
Unlike **SIPO (Serial-In Parallel-Out)** or **PISO (Parallel-In Serial-Out)** registers, this circuit loads and outputs data entirely in **parallel**, making it the simplest form of shift register.  

---

## 🔧 Tools Used  
- **Simulator:** Cadence Xcelium  
- **Platform:** [EDA Playground](https://edaplayground.com/x/r3ue)  

---

## 📌 What I Did  
- ✅ Designed a **4-bit PIPO shift register** with parallel load and parallel output  
- ✅ Built a **testbench** to validate correct loading of data  
- ✅ Generated **waveform (`pipo.vcd`)** and **simulation logs**  
- ✅ Verified immediate transfer of input data to outputs on load  

---

## 💡 Key Learning  
- PIPO shift registers are useful when **bulk data transfer** is needed without serialization.  
- They provide the **fastest data movement**, since all bits are loaded and read simultaneously.  

---

## 📊 Observations  
- Data was loaded in **parallel** within **one clock cycle**.  
- Output immediately reflected the input pattern (`1101` in this case ✅).  
- **No sequential shifting** was required (unlike SIPO or PISO).  

---

## 📂 Files in This Project  
- `shift_reg_pipo.v` → Verilog RTL for the 4-bit PIPO shift register  
- `shift_reg_pipo_tb.v` → Testbench for functional verification  
- `pipo.vcd` → Waveform dump file (viewable in GTKWave or EDA Playground)  

---

## 🔗 Explore More  
- 👉 [Run on EDA Playground](https://edaplayground.com/x/r3ue)  
- 👉 [GitHub Repo](https://github.com/mitanshigaur09/verilog)  

---

## 🚀 Follow My Streak  
I’m sharing daily **RTL design experiments** as part of my **#Verilog Coding Streak**.  
Stay tuned for more designs on **#Verilog #VLSI #DigitalDesign #RTLdesign #FPGA #EDA #HardwareDesign #Semiconductor**.  
