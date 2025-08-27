# 🚀 Day 27 – T Flip-Flop

## 📌 Objective

To design and simulate a **T (Toggle) Flip-Flop** in Verilog and verify its functionality using a testbench.

---

## 📝 Design Description

* **Inputs:**

  * `T` → Toggle input
  * `clk` → Clock signal
  * `reset` → Active-high reset

* **Output:**

  * `q` → Flip-flop output

### Behavior:

* If `reset = 1` → Output `q = 0`
* If `T = 0` → Output holds its value (`q = q`)
* If `T = 1` → Output toggles (`q = ~q`)

This makes the T Flip-Flop suitable for **counters** and **frequency division**.

---

## 📂 Files

* `design.sv` → Verilog code for T Flip-Flop
* `testbench.sv` → Testbench to verify the design
* `TFF.vcd` → Generated waveform file

---

## 🧪 Simulation Steps

1. Compile the design and testbench in **Cadence Xcelium** (EDA Playground).
2. Run the simulation to generate results.
3. Observe toggle behavior in waveform (`TFF.vcd`).

---

## 📊 Output Observation

* Reset initializes output `q=0`.
* For `T=0` → `q` remains unchanged.
* For `T=1` → `q` toggles at every positive clock edge.
* Continuous toggle produces a **divide-by-2 counter**.

---

## 🔗 Resources

* [EDA Playground Link](https://www.edaplayground.com/x/ZgHC)
* [GitHub Repository](https://github.com/mitanshigaur09/verilog)

---

✅ **Day 27 completed – T Flip-Flop implemented successfully!**
