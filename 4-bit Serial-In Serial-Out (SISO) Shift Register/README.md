# Day 29 – 4-bit Serial-In Serial-Out (SISO) Shift Register

## 🟢 Overview

On **Day 29** of my Verilog coding streak, I designed and simulated a **4-bit Serial-In Serial-Out (SISO) Shift Register**. This sequential circuit shifts input data serially through flip-flops, producing a delayed output after 4 clock cycles.

## 🧠 Topic

**4-bit SISO Shift Register** – fundamental in **serial communication** and **data storage**.

## 🔧 Tool Used

* **Cadence Xcelium**
* **EDA Playground**

## 📌 What I Did

* Designed a 4-bit shift register with **serial input** and **serial output**.
* Developed a **testbench** to validate shifting operation with multiple input sequences.
* Generated **waveforms (`siso_shift.vcd`)** and simulation logs to verify correctness.
* Observed **data propagation** across flip-flops over clock cycles.

## 💡 Learning Highlight

A SISO shift register moves data **one bit at a time** with each clock edge. It’s a basic yet essential sequential circuit used in digital systems, especially for **serial data transfer**.

## 📊 Observation

Simulation results confirmed correct shifting behavior:

* Input bits moved sequentially through all flip-flops.
* After 4 clock cycles, the **first input appeared at the serial output**.

## 🔗 Explore More

* **EDA Playground Link:** [https://edaplayground.com/x/G7Q7](https://edaplayground.com/x/G7Q7)
* **GitHub Repo:** [https://github.com/mitanshigaur09/verilog](https://github.com/mitanshigaur09/verilog)

---

**Tags:**
`#Verilog #VLSI #DigitalDesign #RTLdesign #FPGA #EDA #HardwareDesign #CodingStreak #SequentialLogic #Cadence #Xcelium #EDAPlayground #Semiconductor`

---
