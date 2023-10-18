<h1 align="center">Radix-2 4-bit Booth's Multiplier</h1>
This project adheres to the ASIC design flow, a systematic approach for creating custom integrated circuits tailored to specific applications. In this project, Yosys, an open-source synthesis tool, is used for logic synthesis. Yosys helps convert a high-level hardware description of the multiplier into a netlist, optimizing it for area, power, and timing performance. After synthesis, the project employs tools like GLS (Gate-Level Simulation) and OpenLane for physical design. The primary objective is to create a highly efficient custom integrated circuit tailored specifically for binary multiplication, demonstrating the precision and optimization achievable through a systematic ASIC design approach.

## TABLE OF CONTENTS
* [**Introduction**](introduction)
* [**RTL Design and Synthesis**](rtl-design-and-synthesis)
  + [Installation process or Pre-requisites](installation-process-or-pre-requisites)
  + [RTL Simulation](rtl-simulation)
  + [RTL Netlist](rtl-netlist)
  + [Gate-level Netlist](gate-level-netlist)
* [**Physical Design**](physical-design)

## INTRODUCTION
Booth's Algorithm is a binary multiplication technique used in computer arithmetic. It is particularly useful for efficiently multiplying two binary numbers, especially when one of the numbers is negative. 
* **Working:**
The algorithm reduces the number of required additions and shifts during multiplication, making it a valuable method for optimizing multiplication operations in microprocessor design and other digital computing applications. Booth's Algorithm works by iteratively examining pairs of bits in the multiplier and performing addition or subtraction operations on an accumulator based on specific bit patterns. This process continues until all bits in the multiplier have been processed, and the result of the multiplication is obtained.
This project aims to efficiently design and fabricate a custom integrated circuit optimized for binary multiplication.
* **Block diagram:**

  ![block diagram(bm)](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/88d7c9ff-a1f3-4bbb-b6d1-b79224728c9e)

* **Some applications of this are:**
  + Low-power Embedded Systems: In battery-powered devices, like IoT sensors or microcontrollers, where power efficiency is critical and small word sizes are sufficient.
  + Education and Training: It serves as a valuable teaching tool for students learning digital logic and computer architecture concepts.
  + Rapid Prototyping: For quickly implementing small-scale binary multiplication in hardware design projects.
  + Digital Control Systems: In control systems that require binary multiplication for tasks like motor control or sensor processing.
  + Cryptographic Applications: In small-scale cryptographic implementations where a 4-bit word size is suitable for specific operations or simulations.
  + Test and Measurement Equipment: In devices that require binary multiplication for calibration, data processing, or signal analysis.

## RTL DESIGN AND SYNTHESIS
### INSTALLATION PROCESS OR PRE-REQUISITES:
1. **Installig iverilog and GTKWave**
   Icarus Verilog (iverilog) is an open-source hardware description language (HDL) simulator for digital circuit design and verification. GTKWave, on the other hand, is an open-source waveform viewer that    complements Icarus Verilog. It provides a graphical interface for visualizing simulation results, making it easier to analyze and debug digital circuits by displaying waveform data and timing diagrams.
   To install type the following command on ubuntu terminal:
   * `sudo apt-get update`
   * `sudo apt-get install iverilog gtkwave`
2. **Yosys installation**
   Yosys is an open-source framework for Verilog RTL (Register Transfer Level) synthesis and formal verification. Yosys takes a high-level hardware description in a language like Verilog and transforms it    into a lower-level representation suitable for actual hardware implementation.
   To install yosys type the following commands one by one on the ubuntu terminal:
   * `git clone https://github.com/YosysHQ/yosys.git`
   * `sudo apt install make`
   * `sudo apt-get install build-essential clang bison flex \libreadline-dev gawk tcl-dev libffi-dev git \graphviz xdot pkg-config python3 libboost-system-dev \libboost-python-dev libboost-filesystem-dev  zlib1g-dev`
   * `sudo make install`

### RTL SIMULATION
   * To invoke iverilog, `iverilog pes_R2_4BM.v pes_R2_4BM_tb.v`
   * This will produce an output file `a.out`
   * Next step: `./a.out`
   * This will dump the .vcd file which will give us the output waveform.
   * To get the output waveform on gtkwave: `gtkwave pes_R2_4BM_tb.vcd`
   * Simulation Waveform:
     From the above image,
     + The Multiplier, Q = 1011 which is in binary form and in signed decimal form it is -5.
     + Similarly Multiplicand, M = 1010, signed decimal = -6.
     + Product, P = 00011110, signed decimal = 30.
### RTL NETLIST
   * To get the netlist:
     + Invoke Yosys: `yosys`
     + `read_liberty -lib /home/nishita
     + `read_verilog pes_R2_4BM.v`
     + `synth -top pes_R2_4BM`
     + `abc`
     + `show`
### GATE-LEVEL NETLIST
   * Gate-level netlist will be in the form of `.v` file. To get the Gate-level netlist type the following commands:
     + To write netlist file: `write_verilog pes_R2_4BM_netlist.v`
     + To open the netlist file: `!gvim pes_R2_4BM_netlist.v`
   




