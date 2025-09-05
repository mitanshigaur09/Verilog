# 🔢 Day 34 – 4-bit Down Counter with Enable (Verilog)

This is Day 34 of my **Verilog Coding Streak**, where I design, simulate, and analyse digital logic modules daily using **EDA Playground** with **Cadence Xcelium 23.09**.

## 📘 What I Built

A **4-bit Down Counter** with:

* **Enable control** to start/stop counting
* **Active-low asynchronous reset** to reset the counter to the maximum value (`1111`)
* **Parameterized width** (default = 4 bits)

The counter decrements its value on every rising clock edge when enabled.

## 🧪 Testbench & Simulation

The testbench applied different scenarios:

* Reset asserted to initialise the counter to the maximum value
* Enable toggling to pause and resume counting
* Observed wrap-around behavior from `0000 → 1111`

The simulation was run using `$monitor`, and the results were validated through both terminal output and waveform visualisation.

## 📊 Results

### ✅ Output Summary (From Console)

```
 time | rst_n en | count
   20 | 1    1   | 1111 (15)
   30 | 1    1   | 1110 (14)
   40 | 1    1   | 1101 (13)
   ...
  160 | 1    1   | 0000 (0)
  170 | 1    1   | 1111 (15)   // Wrap-around observed
```

### 📉 Waveform

![Waveform](waveform.png)

The waveform clearly shows **decrementing behavior**, pause when `en=0`, and reset to maximum value when `rst_n=0`.

---

## ▶️ Run the Code

Try it yourself on EDA Playground:
🔗 EDA Playground Link: [https://edaplayground.com/x/tvjR](https://edaplayground.com/x/tvjR)

---

## 📁 Project Structure

* `rtl/` – Contains the down counter module
* `tb/` – Contains the testbench
* `waveform/` – Dumped VCD files and screenshots

## 🧠 Learnings

Down counters are widely used in **timers, watchdog circuits, event countdowns, and sequencing operations**. With enable and asynchronous reset, this design becomes flexible and practical for real-world applications.

## 📌 License

This project is for learning and open-source contribution. Feel free to fork, test, or use as a reference.

\#VLSI #Verilog #DigitalDesign #EDAPlayground #Cadence #RTLdesign #Counter #Waveform #HardwareDesign #VerilogStreak #HDL
