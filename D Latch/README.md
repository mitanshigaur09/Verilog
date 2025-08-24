# Day 23 – D Latch (Level-Sensitive)

## 📌 Problem Statement
Design and simulate a **D Latch** using Verilog.  
The D Latch is a fundamental **1-bit storage element** that is **level-sensitive**.

## 📝 Design Details
- **Inputs:** `D` (data), `Enable` (control)  
- **Outputs:** `Q`, `Qbar`  

**Behavior:**  
- When `Enable = 1` → Q follows D (transparent mode)  
- When `Enable = 0` → Q holds the last state (latch mode)

## ✅ What I did
- Implemented the D Latch in Verilog using behavioral modeling  
- Wrote a **testbench** to apply different values of `D` with both `Enable = 0` and `Enable = 1`  
- Generated waveform (`dump.vcd`) for verification  

## 💡 Learning Highlight
- The **D Latch** solves the invalid state issue of the SR latch by having only one input.  
- It is **transparent** when enabled and acts as a **memory element** when disabled.  
- Used in registers, memory elements, and as a building block for flip-flops.

## 📊 Simulation Results
- `Enable=1` → Output Q instantly follows D  
- `Enable=0` → Output Q remains stable regardless of D  
- Waveform confirmed correct **transparent** and **hold** behavior

## 🔗 Resources
- [EDA Playground Simulation](https://edaplayground.com/x/qZkH)  
- [GitHub Repo](https://github.com/mitanshigaur09/verilog)  

---
