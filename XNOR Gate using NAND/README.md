# Day 10 – XNOR Gate using NAND Gates 

Welcome to Day 10 of my **30-day Verilog Coding Streak**!  
Today's challenge was to implement a **2-input XNOR gate** using only **NAND gates**, a classic demonstration of functional completeness in digital logic.

## ✅ Objective
Design and simulate an XNOR gate using only NAND gates.  
Verify its functionality with all possible combinations of inputs using a testbench.

## 🛠️ Tools Used
- **EDA Playground**
- **Cadence Xcelium 23.09**

## 🧪 What I Did
- Created a structural model of a 2-input XNOR gate using five NAND gates.
- Wrote a testbench to simulate all four combinations of input signals.
- Used `$monitor` to track simulation output and confirmed behavior via waveform.

## 📊 Output
The output `y` is:
- HIGH (1) when inputs `a` and `b` are the same (`00` or `11`)
- LOW (0) when inputs differ (`01` or `10`)

The waveform confirms correct XNOR functionality.

## 🔗 Useful Links
- 💻 [Try it on EDA Playground](https://edaplayground.com/x/hiHx)  
- 📂 [GitHub Repository](https://github.com/mitanshigaur/verilog-coding-streak)

## 🚀 Join the Journey
This project is part of my #VerilogCodingStreak, where I share daily Verilog design challenges, testbenches, and simulations to strengthen RTL design skills.

Stay tuned for Day 11!
