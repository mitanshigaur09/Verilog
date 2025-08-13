# Day 15 – Full Adder Using Basic Logic Gates

## 📌 Overview
On Day 15 of my **Verilog Coding Streak**, I designed a **Full Adder** using only basic logic gates.  
The goal was to implement the sum (`s`) and carry-out (`cout`) logic for adding two single-bit numbers with an additional carry-in (`cin`).

## 🛠 Tool Used
- **Cadence Xcelium** on **EDA Playground**

## 🎯 What I Did
- Designed the **sum** output using XOR operations.
- Implemented the **carry** output using AND and OR gates.
- Created a testbench to verify all **8 possible input combinations**.
- Verified functionality using simulation logs and waveforms.

## 💡 Learning Highlight
A **Full Adder** performs the addition of two single-bit inputs along with a carry-in, producing:
- **Sum (`s`)** → High (1) when the count of high inputs is odd.
- **Carry-out (`cout`)** → High (1) when at least two inputs are high.

This design is a fundamental part of **binary arithmetic circuits** such as ALUs and processors.

## 📊 Observation
- Simulation results matched the truth table perfectly.
- Waveform confirmed correct timing and logical behavior.

## 🔗 Explore More
- **EDA Playground Link:** [Click Here](https://edaplayground.com/x/Xs8B)
- **GitHub Repo:** [Verilog Coding Streak](https://github.com/mitanshigaur/verilog-coding-streak)

---

**#Verilog #VLSI #DigitalDesign #RTLdesign #FPGA #EDA #HardwareDesign #FullAdder #LogicGates #Cadence #Xcelium #EDAPlayground #CodingStreak #DigitalCircuits #Semiconductor**
