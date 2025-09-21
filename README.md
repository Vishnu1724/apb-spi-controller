# apb-spi-controller
SPI Master Controller with APB interface, written in Verilog/System Verilog.
## 📌 Overview
This project implements a **Serial Peripheral Interface (SPI) Controller** with an **AMBA APB (Advanced Peripheral Bus) interface**.  
It is written in **SystemVerilog/Verilog** and includes a verilog testbench.  

The controller allows an APB master (like a CPU or microcontroller) to configure and control SPI communication with external peripherals such as sensors or memory devices.

---

## ⚡ Features
- APB slave interface for register access  
- Supports **SPI Master mode**  
- Configurable parameters:  
  - Clock polarity (CPOL)  
  - Clock phase (CPHA)  
  - SPI clock divider
  - Least Significant Bit First Enable (LSBFE)
  - Data width (e.g., 8/16 bits)  
- Transmit (TX) and Receive (RX) buffers  
- Status and control registers  
- Verilog testbench for simulation  
- **APB Slave Interface**
  - APB2/APB3 protocol support
  - Control & status registers for configuration
- **SPI Master Logic**
  - Supports configurable **data width (8/16-bit)**
  - Configurable **CPOL** (Clock Polarity) & **CPHA** (Clock Phase)
  - **LSBFE** bit for MSB-first or LSB-first shifting
- **Baudrate Generator**
  - Programmable divider to generate SPI SCLK from APB clock
- **Slave Select**
  - Supports multiple chip-select (CS) lines
- **Shifter**
  - TX shifter: parallel-to-serial
  - RX shifter: serial-to-parallel
