## 🟢 Day 30: 4-bit Serial-In Parallel-Out (SIPO) Shift Register

### 📌 Theory

A **Serial-In Parallel-Out (SIPO) Shift Register** accepts serial data (one bit at a time) at its input and converts it into a parallel output after a fixed number of clock cycles. For a 4-bit SIPO, four clock cycles are required to fill the register completely.

📖 **Key Points:**

* Data shifts in serially at each rising clock edge.
* After 4 shifts, the complete 4-bit word is available at the parallel output.
* Commonly used in digital communication systems, UARTs, and I/O data conversion.

---

### 🧪 Simulation Details

* **Reset Applied:** Active-low reset initializes the register to `0000`.
* **Shifting Process:** Bits were shifted in sequentially at each clock edge.
* **Final Output Observed:** After 4 cycles, the parallel output matched the expected serial input sequence.

✅ **Final Parallel Output:** `1011`

---

### 📊 Applications

* Data reception in serial communication protocols (UART, SPI, I²C).
* Converting serial data streams into parallel form for processors.
* Data buffering and temporary storage in digital systems.

---

🔗 **EDA Playground Link:** [https://edaplayground.com/x/Zq2m](https://edaplayground.com/x/Zq2m)

---

Do you want me to also prepare a **Day 30 LinkedIn carousel content (slide-wise points)** so you can post it as a visual too?
