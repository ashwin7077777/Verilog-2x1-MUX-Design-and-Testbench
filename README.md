# 🔌 Verilog 2:1 MUX Design & Testbench

This repository contains the implementation of a **2:1 Multiplexer (MUX)** in Verilog along with a complete testbench and simulation setup.

---

## 📌 Project Overview

A **Multiplexer (MUX)** selects one of the input signals based on a control signal (`sel`) and forwards it to the output.

### Logic:
- If `sel = 0` → Output = `a`
- If `sel = 1` → Output = `b`

---

## 📂 Files Included

- `design.sv` → Verilog design of 2:1 MUX
- `testbench.sv` → Testbench to verify functionality
- (Optional) waveform files if using GTKWave

---

## ⚙️ Design Code

```verilog
module mux(input a, b, sel, output reg x);

  always @(*) begin
    if (sel == 1'b0)
      x = a;
    else
      x = b;
  end

endmodule
