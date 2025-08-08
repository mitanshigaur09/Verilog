# Day 11 - OR Gate Using NOR Gates

This project is part of my **30-Day Verilog Coding Streak**, where I implement one digital design concept each day using Verilog HDL. On Day 11, I focused on building a 2-input OR gate using only **NOR gates**, demonstrating the versatility of universal logic gates.

## 🧠 Concept

Instead of using a native OR gate, the logic is implemented using a combination of **two NOR gates**, taking advantage of De Morgan’s Theorem. This exercise highlights the concept of functional completeness in digital design.

## 📁 Files

- `or_gate.sv` – RTL design for the OR gate using NOR gates.
- `or_gate_tb.sv` – Testbench to simulate the design with all input combinations.
- `dump.vcd` – Waveform output for visual inspection of signal changes.

## 🧪 Simulation

- Tool used: **Cadence Xcelium** on [EDA Playground](https://edaplayground.com/)
- Simulation was run using `$monitor` and waveform was dumped using `$dumpfile` and `$dumpvars`.

## ✅ Expected Behavior

| a | b | y (OR Output) |
|---|---|---------------|
| 0 | 0 | 0             |
| 0 | 1 | 1             |
| 1 | 0 | 1             |
| 1 | 1 | 1             |

## 🔗 Links

- ▶️ [Run this design on EDA Playground](https://edaplayground.com/x/j_tg)
- 📂 [View the full GitHub Repository](https://github.com/MitanshiGaur/Verilog-Coding-Streak)

## 📌 Key Learning

Universal gates like **NOR** can replicate the behavior of any other gate. Understanding this expands flexibility in logic optimization and hardware design.

---

Stay tuned for more designs in my 30-day Verilog journey!
