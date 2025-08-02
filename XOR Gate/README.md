# XOR Gate - Verilog HDL

This project demonstrates the implementation and simulation of a **2-input XOR (Exclusive OR) gate** using **Verilog HDL**. The XOR gate is a fundamental digital logic gate that outputs high (`1`) only when the number of high inputs is odd (i.e., exactly one input is high).

## 📌 Project Overview

- **Gate:** XOR Gate (Exclusive OR)
- **Inputs:** `a`, `b`
- **Output:** `y = a ^ b`
- **Platform:** [EDA Playground](https://edaplayground.com/)
- **Simulator:** Cadence Xcelium 23.09

## 🧪 Truth Table

| a | b | y (a ^ b) |
|---|---|-----------|
| 0 | 0 |     0     |
| 0 | 1 |     1     |
| 1 | 0 |     1     |
| 1 | 1 |     0     |

## 🛠️ Tools Used

- **EDA Playground** – for writing and simulating Verilog code online.
- **Cadence Xcelium** – a simulation tool for verifying digital designs.
- **GTKWave** – for viewing simulation waveforms.

## 📷 Simulation Outputs

### ✅ Console Output:
```

At time T=0, a=0, b=0, y=0
At time T=10, a=0, b=1, y=1
At time T=20, a=1, b=0, y=1
At time T=30, a=1, b=1, y=0

```

### 📊 Waveform Snapshot:
> ![XOR Gate Waveform](waveform.png)

## 🔗 Useful Links

- ▶️ **Live Simulation**: [Run on EDA Playground](https://edaplayground.com/x/PH8p)
- 📁 **Repository Structure**:
```

├── xor_gate.v         # XOR gate design file
├── xor_gate_tb.v      # Testbench for XOR gate
└── waveform.png       # Simulation waveform

```

## 🧠 Author

**Mitanshi Gaur**  
Connect with me on [LinkedIn](https://www.linkedin.com/in/mitanshigaur)

---

📌 *This project is part of my Verilog Daily Coding Streak focused on strengthening RTL design fundamentals.*
