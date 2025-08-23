# Day 23 – D Flip-Flop (Edge-Triggered)

## 📌 Topic
Design and verification of a **D Flip-Flop** using Verilog.  
The D flip-flop captures the input `D` only on the **clock edge**, unlike latches that are level-sensitive.

---

## 🔧 Tool Used
- Cadence **Xcelium** on **EDA Playground**

---

## 📝 What I Did
- Designed a positive-edge triggered **D Flip-Flop** with inputs:
  - `D` → Data Input  
  - `clk` → Clock  
  - `rst` → Asynchronous Reset
- Implemented the logic:
  - On `posedge clk`, `Q <= D`
  - On `rst=1`, `Q <= 0`
- Wrote a testbench to verify:
  - Store behavior on rising clock edge  
  - Reset operation overriding stored value
- Generated waveform (`dump.vcd`) for verification

---

## 💡 Learning Highlight
- The **D Flip-Flop** is the simplest and most widely used flip-flop  
- It acts as a **1-bit memory element**  
- Used in **registers, counters, shift registers, and memory design**

---

## 📊 Observation
- Waveform confirmed:
  - `Q` follows `D` only at **posedge clk**  
  - `rst=1` forced `Q=0` immediately  
  - Correct **store & reset** functionality observed  

---

## 🔗 Explore More
- **EDA Playground Link:** [https://edaplayground.com/x/qZkH](https://edaplayground.com/x/qZkH)  
- **GitHub Repo:** [https://github.com/mitanshigaur09/verilog](https://github.com/mitanshigaur09/verilog)

---

## 🚀 Next Steps
Up next → **T Flip-Flop & JK Flip-Flop** in sequential circuit design!
