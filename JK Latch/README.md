# Day 22 – JK Latch (Level-Sensitive)

## 📌 Objective  
To design and verify a **JK Latch** in Verilog using **Cadence Xcelium** on **EDA Playground**.

---

## 🔧 Design Details  
- **Inputs:** `J`, `K`, `Enable` (level-sensitive)  
- **Outputs:** `Q`, `Q_bar`  
- **Behavior (Truth Table):**  

| J | K | Enable | Q (Next State) | Description |
|---|---|--------|----------------|-------------|
| 0 | 0 | 1      | Q (Hold)       | No Change   |
| 0 | 1 | 1      | 0              | Reset       |
| 1 | 0 | 1      | 1              | Set         |
| 1 | 1 | 1      | ~Q             | Toggle      |

- When **Enable = 0**, latch holds its previous state.  

---

## 🖥️ Code Files  
- **Design:** `design.sv`  
- **Testbench:** `testbench.sv`

---

## 🧪 Simulation Output  

### Console Log
```

Time J K EN | Q Q\_bar
0ns  0 0 0  | x x
10ns 1 0 1  | 1 0
20ns 0 1 1  | 0 1
30ns 1 1 1  | 1 0
40ns 0 0 1  | 1 0
...

```

### Waveform  
✅ Shows **Hold, Set, Reset, and Toggle** behavior as expected.  

---

## 💡 Learning Highlight  
- The **JK Latch** eliminates the invalid state issue of the SR Latch.  
- Its **toggle feature** makes it useful in **counters, dividers, and sequential circuits**.  

---

## 🔗 Resources  
- [Run on EDA Playground](https://edaplayground.com/x/Txcq)  
- [GitHub Repo](https://github.com/mitanshigaur/verilog)  

---

📅 **Day 22 completed successfully!** 🚀  
```
