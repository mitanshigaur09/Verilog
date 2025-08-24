# Day 24 — T-Latch (Toggle Latch) — Level Sensitive

## 🧠 Overview
This project implements a **T-Latch** in Verilog and verifies it using a simple testbench.
A T-Latch is **level-sensitive**:
- When **En = 1**:
  - **T = 0 → Q holds**
  - **T = 1 → Q toggles**
- When **En = 0**: Q holds (ignores T)

## 🔧 Tools
- Cadence **Xcelium** (EDA Playground)
- Waveform dump: `t_latch.vcd`

## 📐 Truth Table
| En | T | Next Q         |
|----|---|----------------|
| 0  | X | Hold (no change) |
| 1  | 0 | Hold (no change) |
| 1  | 1 | Toggle (~Q)      |

## 🗂 Files
- `design.sv` — T-Latch RTL
- `testbench.sv` — Stimulus + monitors

## ▶️ How to Run
1. Open on EDA Playground: https://edaplayground.com/x/D3qE  
2. Simulator: **Cadence Xcelium**  
3. Run → view **console log** and **waveform** (`t_latch.vcd`).

## 🧪 Testbench Stimulus (excerpt)
The testbench steps through:
- `En=0, T=0`  → Q holds
- `En=1, T=0`  → Q holds
- `En=1, T=1`  → Q toggles repeatedly
- `En=0, T=1`  → Q holds
- `En=1, T=1`  → Q toggles again

### Expected Console Trace (matches waveform)
```
Time=0 | En=0 T=0 -> Q=0
Time=10 | En=1 T=0 -> Q=0
Time=20 | En=1 T=1 -> Q=1
Time=30 | En=1 T=1 -> Q=0
Time=40 | En=1 T=0 -> Q=0
Time=50 | En=0 T=1 -> Q=0
Time=60 | En=1 T=1 -> Q=1
```
## 📊 What I Observed
- `T=1` with `En=1` cleanly toggles `Q`.
- When `En=0`, the latch holds its last state regardless of `T`.
- Waveform aligns with the truth table for all cases.

## 🔗 Links
- EDA Playground: https://edaplayground.com/x/D3qE
- Repo Root: https://github.com/mitanshigaur09/verilog-coding-streak

---
