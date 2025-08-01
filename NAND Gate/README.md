# Verilog - 2-Input NAND Gate

This project demonstrates the implementation and simulation of a 2-input NAND gate using Verilog HDL.

## 🔍 Overview

A NAND (NOT AND) gate is a fundamental digital logic gate that outputs logic LOW (`0`) only when **both** of its inputs are HIGH (`1`). In all other input combinations, it outputs logic HIGH (`1`).

| Input A | Input B | Output Y (A NAND B) |
|---------|---------|---------------------|
|   0     |    0    |         1           |
|   0     |    1    |         1           |
|   1     |    0    |         1           |
|   1     |    1    |         0           |

## ⚙️ Features

- Verilog-based design and testbench
- Simulated on **Cadence Xcelium** via **EDA Playground**
- Generates VCD waveform output for signal verification
- Uses `$monitor`, `$dumpfile`, and `$dumpvars` for runtime and waveform analysis

## 📂 Files

- `nand_gate.v`: Verilog module for NAND gate logic
- `nand_gate_tb.v`: Testbench to simulate all input cases
- `dump.vcd`: Waveform file generated after simulation

## 📸 Simulation Output

- All four input combinations tested successfully
- Waveform shows correct output transitions
- Simulation log confirms expected behavior

## 🔗 Useful Links

- **EDA Playground Simulation**: [Run the simulation here](https://edaplayground.com/x/F_vA)
- **GitHub Repository**: [View the project on GitHub](https://github.com/mitanshigaur09/Verilog/tree/main/NAND%20Gate)

## 🧠 Learning Outcome

Understanding NAND gate functionality is crucial as it's a **universal gate** used to implement any digital circuit. Through this project, you gain hands-on experience in:

- Module definition
- Testbench creation
- Output monitoring & waveform visualisation

---

📌 Part of my **30-Day Verilog Coding Streak** – stay tuned for more gates and sequential logic designs!
