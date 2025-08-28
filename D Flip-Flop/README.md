# Day 28 – D Flip-Flop

## 📌 Overview

The **D Flip-Flop** (Data or Delay Flip-Flop) is the most widely used flip-flop in digital systems.
It captures the input `D` on the **rising edge** of the clock and holds it until the next clock edge.
With a reset, it initializes the circuit to a known state.

---

## 📊 Simulation

* **Reset (`rst=1`)** → Output `Q` is cleared to `0`.
* **On rising clock edge with `rst=0`** → `Q` follows input `D`.
* **Between clock edges** → `Q` holds its value.

Waveform file generated: **`d_ff.vcd`**

---

## ✅ Observation

* Verified **edge-triggered behavior** of the D Flip-Flop.
* Reset operation worked as expected.
* Output updated only on clock’s rising edge and remained stable otherwise.

---

🔗 **Explore More:**

* 👉 EDA Playground Link: [https://edaplayground.com/x/7AxW](https://edaplayground.com/x/7AxW) 
* 👉 GitHub Repo: [https://github.com/mitanshigaur09/verilog](https://github.com/mitanshigaur09/verilog)

---

