# 🟢 Day 18 – 4-to-2 Encoder Using Gate-Level Modeling

## 📘 Topic

Design and verification of a **4-to-2 Encoder** using basic logic gates in Verilog.

## 🛠 Tool Used

* **Cadence Xcelium** on **EDA Playground**

## 📌 What I Did

* Implemented the **encoder logic** using **OR gates**
* Designed a **testbench** to verify all valid input combinations (I0, I1, I2, I3)
* Generated the **waveform (dump.vcd)** for visual verification
* Validated outputs Y1 and Y0 against the theoretical truth table

## 💡 Learning Highlight

A **4-to-2 Encoder** reduces four input lines into two output lines by encoding the active input into a **binary code**. It’s an essential block in **digital systems, priority encoders, and address decoding**.

## 📊 Observation

* **I3 = 1 → Y1Y0 = 11**
* **I2 = 1 → Y1Y0 = 10**
* **I1 = 1 → Y1Y0 = 01**
* **I0 = 1 → Y1Y0 = 00**

✅ The **simulation log and waveform** perfectly matched the theoretical truth table.

## 🔗 Explore More

* ▶️ [Run on EDA Playground](https://edaplayground.com/x/Xnc6)
* 📂 [GitHub Repository](https://github.com/mitanshigaur09/verilog)
