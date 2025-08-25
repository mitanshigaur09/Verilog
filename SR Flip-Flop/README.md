# Day 25 – SR Flip-Flop (Set-Reset) – Edge Triggered

## 📘 Introduction
The **SR Flip-Flop** is the clocked version of the SR Latch. It is an **edge-triggered sequential circuit**, meaning it changes state only on a clock edge. It has two inputs **S (Set)** and **R (Reset)**, and one output **Q**.

This circuit is widely used in sequential logic but has a limitation — the **invalid condition (S=R=1)**. That’s why in practical systems, it often gets replaced by **JK or D flip-flops**.

---

## 📜 Truth Table

| **S** | **R** | **clk** | **Q (Next State)** | **Description**       |
|-------|-------|---------|---------------------|-----------------------|
| 0     | 0     | ↑       | Q (No Change)      | Hold                  |
| 0     | 1     | ↑       | 0                   | Reset                 |
| 1     | 0     | ↑       | 1                   | Set                   |
| 1     | 1     | ↑       | Invalid             | Not Allowed           |

---

## 🛠️ Implementation
- **Inputs:** `S`, `R`, `clk`
- **Output:** `Q`
- **Behavior:** Edge-triggered — updates output only at clock rising edge.

---

## 📂 Files
- `sr_ff.v` → Verilog implementation of SR Flip-Flop  
- `sr_ff_tb.v` → Testbench for SR Flip-Flop  
- `sr_ff.vcd` → Waveform file for simulation  

---

## 🧪 Simulation Results
✅ **S=1, R=0 → Set** (Q=1)  
✅ **S=0, R=1 → Reset** (Q=0)  
✅ **S=0, R=0 → Hold** (Q retains state)  
⚠️ **S=1, R=1 → Invalid** (not used in practical designs)  

Waveform and log outputs confirm correct functionality.

---

## 🔗 Explore More
- ▶️ [EDA Playground Link](https://edaplayground.com/x/D3qE)  
- 💻 [GitHub Repo](https://github.com/mitanshigaur09/verilog-coding-streak)

---

## 🚀 Learning Highlight
The SR Flip-Flop demonstrates the transition from **level-sensitive latches** to **edge-triggered sequential circuits**, forming the foundation of reliable digital systems. However, due to the **invalid state issue**, **JK** and **D Flip-Flops** are preferred in modern designs.
