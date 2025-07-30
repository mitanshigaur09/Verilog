# 🔧 Day 2 – 2-Input AND Gate

This project is part of my **Verilog Coding Streak**, where I design and simulate digital logic modules daily using **EDA Playground** with **Cadence Xcelium 23.09**.

---

## 📘 Description

The focus for Day 2 is the **AND gate** — a fundamental combinational logic gate that outputs `1` only when **both inputs** are `1`. This logic is a key component in arithmetic circuits, FSMs, ALUs, and more.

---

## 🧪 What Was Done

- Designed a 2-input AND gate module
- Developed a testbench to simulate all binary input combinations:
  - 00
  - 01
  - 10
  - 11
- Used `$monitor` to observe signal transitions
- Generated waveforms using VCD and verified with the waveform viewer

---

## 📊 Simulation Summary

### ✅ Console Output:
```

T=0  → a=0, b=0 → y=0
T=10 → a=0, b=1 → y=0
T=20 → a=1, b=0 → y=0
T=30 → a=1, b=1 → y=1

```

### 📉 Waveform:

![AND Gate Waveform](waveform.png)

The waveform confirms that output `y` is high **only when both `a` and `b` are high** — as expected from an AND gate.

---

## ▶️ Run It Yourself

- 🔗 [EDA Playground Link](https://edaplayground.com/x/Y8dj)
- 📂 [GitHub Repo](https://github.com/mitanshigaur09/Verilog/tree/main/AND%20Gate)

---

## 🗂 Project Structure

- `rtl/` – Contains Verilog module(s)  
- `tb/` – Testbench files  
- `waveform/` – Simulation outputs (VCD and images)

---

## 🧠 Learnings

Even basic logic gates are crucial when building larger, hierarchical digital systems. Clear testbenches and waveform validation help prevent bugs early in the design process.

---

## 📌 License

This project is open for educational and non-commercial use.

---

#VLSI #Verilog #DigitalDesign #EDAPlayground #ANDgate #RTLDesign #FPGA #Semiconductor #Waveform #HardwareDesign #VerilogStreak
```

