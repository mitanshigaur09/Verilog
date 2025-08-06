# Day 09 – XOR Gate using NAND | Verilog Coding Streak

## 📘 Overview
On Day 09 of my Verilog Coding Streak, I focused on implementing a **2-input XOR gate** using only NAND gates. This exercise highlights how universal logic gates like NAND can be combined to form other essential gates, such as XOR, which is pivotal in arithmetic and logic operations.

## 🧠 Concept
The XOR (Exclusive OR) gate outputs `1` only when **exactly one** of the two inputs is `1`. This makes it extremely useful in designing adders, parity checkers, and data comparison units.

For this task, the XOR logic was built solely using four interconnected NAND gates — showcasing a fundamental technique often taught in digital logic design.

## 🛠️ Tools Used
- **Language:** Verilog HDL  
- **Simulation Tool:** Cadence Xcelium  
- **Platform:** EDA Playground

## 📊 Testbench Insights
A structured testbench was created to verify the XOR functionality. Inputs `(a, b)` were tested across all four combinations:  
- (0, 0) → 0  
- (0, 1) → 1  
- (1, 0) → 1  
- (1, 1) → 0  

Both console output and waveform viewer confirmed the correct XOR behavior.

## 🔗 Useful Links
- 💻 [EDA Playground Simulation](https://edaplayground.com/x/EbaG)  
- 📂 [GitHub Repository](https://github.com/mitanshigaur09/Verilog/tree/main/XOR%20Gate%20using%20NAND)

## 🚀 What's Next?
The journey continues with more combinational modules and eventually into sequential and FSM-based designs. Stay tuned for Day 10!

---

**#Verilog #DigitalLogic #XORgate #VLSI #RTL #Simulation #Cadence #Xcelium #HardwareDesign #CodingStreak**
