<h1 align="center">Radix-2 4-bit Booth's Multiplier</h1>
This project adheres to the ASIC design flow, a systematic approach for creating custom integrated circuits tailored to specific applications. In this project, Yosys, an open-source synthesis tool, is used for logic synthesis. Yosys helps convert a high-level hardware description of the multiplier into a netlist, optimizing it for area, power, and timing performance. After synthesis, the project employs tools like GLS (Gate-Level Simulation) and OpenLane for physical design. The primary objective is to create a highly efficient custom integrated circuit tailored specifically for binary multiplication, demonstrating the precision and optimization achievable through a systematic ASIC design approach.

## TABLE OF CONTENTS
* [**INTRODUCTION**](#introduction)
* [**RTL DESIGN AND SYNTHESIS**](#rtl-design-and-synthesis)
  + [Installation Process or Pre-requisites](#installation-process-or-pre-requisites)
  + [RTL Simulation](#rtl-simulation)
  + [RTL Synthesis](#rtl-synthesis)
  + [Gate-level Simulation](#gate-level-simulation)
* [**PHYSICAL DESIGN**](#physical-design)
  + [Design Preparation](#design-preparation)
  + [Synthesis](#synthesis)
  + [Floorplan](#floorplan)
  + [Placement](#placement)
  + [Clock Tree Synthesis(CTS)](#clock-tree-synthesis-(cts))
  + [Routing](#routing)

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
     
     ![Screenshot from 2023-10-18 21-44-59](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/3fcc0e63-03a5-4d57-94cd-b712f47dd05e)

   * Simulation Waveform:
     
     ![Screenshot from 2023-10-18 17-58-54](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/d048ca5c-a94d-4191-b14f-d968cc74f4fb)

     From the above image,
     + The Multiplier, Q = 1011 which is in binary form and in signed decimal form it is -5.
     + Similarly Multiplicand, M = 1010, signed decimal = -6.
     + Product, P = 00011110, signed decimal = 30.
### RTL SYNTHESIS
  + Invoke Yosys: `yosys`
  + Read the library file: `read_liberty -lib /home/nishita_joshi/Desktop/verilogfiles/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib`
  + Read verilog files: `read_verilog pes_R2_4BM.v`
  + To synthesize the file: `synth -top pes_R2_4BM`
  + Map the library file: `dfflibmap -liberty /home/nishita_joshi/Desktop/verilogfiles/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib`
    
    ![Screenshot from 2023-10-19 19-36-28](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/3f634047-3720-4ee5-8243-5f101c304744)
    
    ![Screenshot from 2023-10-19 19-38-08](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/b7d7fe0c-631c-44c6-9930-78716281a75a)

  + To generate netlist: `abc -liberty /home/nishita_joshi/Desktop/verilogfiles/sky130RTLDesignAndSynthesisWorkshop/lib/sky130_fd_sc_hd__tt_025C_1v80.lib`
  
    **Skywater130pdk Physical Cell Mapping**
     
     ![Screenshot from 2023-10-19 19-38-43](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/c64f9799-34a9-4acf-8c28-0926c071479b)

  + `flatten`
  + `show`
     
    ![Screenshot from 2023-10-19 19-42-15](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/13b78118-3cc9-44d0-b72e-3b2c74813a0f)

 + Gate-level netlist will be in the form of `.v` file. To get the Gate-level netlist type the following commands:
     - To write netlist file: `write_verilog pes_R2_4BM_netlist.v`
     - To open the netlist file: `!gvim pes_R2_4BM_netlist.v`

### GATE-LEVEL SIMULATION
* To invoke GLS:
  + `iverilog /home/nishita_joshi/Desktop/verilogfiles/sky130RTLDesignAndSynthesisWorkshop/my_lib/verilog_model/primitives.v /home/nishita_joshi/Desktop/verilogfiles/sky130RTLDesignAndSynthesisWorkshop/my_lib/verilog_model/sky130_fd_sc_hd.v pes_R2_4BM.v pes_R2_4BM_tb.v`
  + `./a.out`
  + `gtkwave pes_R2_4BM_tb.vcd`
  
  ![Screenshot from 2023-10-19 19-39-25](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/5926faef-f810-4661-ba3d-91c6bb74bbe4)

  **Gate Level Simulation Waveform**

  ![Screenshot from 2023-10-19 19-14-02](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/1b8f8b03-dd89-4196-be31-3f50159c680c)

## PHYSICAL DESIGN
<details>
  <summary>INSTALLATION PROCESS OR PRE-REQUISITES:</summary>
  
1. System Check: The following specifications are mentioned for system pre-requisites
  + 6GB RAM
  + 50 GB HDD
  + Ubuntu 18.04+
  + 4vCPU

2. Yosys Installation:
Run the following commands on the terminal to install Yosys:
+ `$ git clone https://github.com/YosysHQ/yosys.git`
+ `$ cd yosys`
+ `$ sudo apt install make` 
+ `$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev`
+ `$ make config-gcc`
+ `$ make`
+ `$ sudo make install`

3. Iverilog & Gtkwave installation commands:
  + For iverilog: `sudo apt-get install iverilog`
  + For gtkwave:
    - `sudo apt update`
    - `sudo apt install gtkwave`
4. OpenSTA:
  + `git clone https://github.com/The-OpenROAD-Project/OpenSTA`

5. ngspice:
  + Download the tarball from https://sourceforge.net/projects/ngspice/files/ to a local directory & unpack it using following commands:
    - `$ tar -zxvf ngspice-41.tar.gz`
    - `$ cd ngspice-41`
    - `$ mkdir release`
    - `$ cd release`
    - `$ ../configure  --with-x --with-readline=yes --disable-debug`
    - `$ make`
    - `$ sudo make install`
  
6. Magic installation:
  + `$ sudo apt-get install m4`
  + `$ sudo apt-get install tcsh`
  + `$ sudo apt-get install csh`
  + `$ sudo apt-get install libx11-dev`
  + `$ sudo apt-get install tcl-dev tk-dev`
  + `$ sudo apt-get install libcairo2-dev`
  + `$ sudo apt-get install mesa-common-dev libglu1-mesa-dev`
  + `$ sudo apt-get install libncurses-dev`
  + `git clone https://github.com/RTimothyEdwards/magic`
  + `cd magic`
  + `./configure`
  + `make`
  + `sudo make install`

7. OpenLane:
  + `sudo apt-get update`
  + `sudo apt-get upgrade`
  + `sudo apt install -y build-essential python3 python3-venv python3-pip make git`
  + `sudo apt install apt-transport-https ca-certificates curl software-properties-common`
  + `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`
  + `echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
  + `sudo apt update`
  + `sudo apt install docker-ce docker-ce-cli containerd.io`
  + `sudo docker run hello-world`
  + `sudo groupadd docker`
  + `sudo usermod -aG docker $USER`
  + `sudo reboot`
  + After reboot: `docker run hello-world`

8. To install pdks & tools run the following commands:
  + `cd $HOME`
  + `git clone https://github.com/The-OpenROAD-Project/OpenLane`
  + `cd OpenLane`
  + `make`
  + `make test`

9.  To get Stdcell:
  + `git clone https://github.com/nickson-jose/vsdstdcelldesign.git`

</details>

### Design preparation:
* For physical design create a directory of the design and copy the following files to the src folder of the directory:
  `config.json, pes_R2_4BM.v , sky130_vsdinv.lef , sky130_fd_sc_hd_fast.lib , sky130_fd_sc_hd_slow.lib and sky130_fd_sc_hd_typical.lib in OpenLane/designs/pes_R2_4BM/src`
* Invoke Openlane:
  + `make mount`
  + `./flow.tcl -interactive`: opens interactive mode
  
  ![Screenshot from 2023-11-04 15-07-07](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/316c9388-9599-470b-8082-920602f008e0)

  + `prep -design pes_R2_4BM`: imports the design
  + Now to merge the sky130_vsdinv lef file to the merged.nom.lef:
    - `set lefs [glob $::env(DESIGN_DIR)/src/*.lef]`
    - `add_lefs -src $lefs`
    
  ![Screenshot from 2023-11-04 15-07-25](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/481cad3e-896f-4036-9a0c-a302848585ac)

* The merged file will contain the sky130_vsdinv macro
  
  ![Screenshot from 2023-11-04 15-08-21](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/2a5e3d01-d958-424e-9f9e-4802d4522f5f)

### Synthesis:
* For synthesis run: `run_synthesis`
  
  ![Screenshot from 2023-11-04 15-11-49](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/f63156f4-a514-444e-87cf-1d86726cdab4)

* Synthesis Report:
  
  ![Screenshot from 2023-11-04 15-12-37](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/1e259496-940a-442b-a1ea-ff71a052ca12)

* Flop Ratio:
  Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 24/112 = 0.2143
  
* If the macro sky130_vsdinv is synthesised on the design then the sky130_vsdinv will be reflected on the sythesised design file:
  
  ![Screenshot from 2023-11-04 15-14-46](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/ecd184a9-0e10-4fa4-8524-b6b46282eda9)

### Floorplan:
* For floorplan: `run_floorplan`
  
  ![Screenshot from 2023-11-04 15-21-45](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/db673eda-a9af-4425-8056-8fc7a88b9848)

* Core Area:
  
  ![Screenshot from 2023-11-04 15-22-18](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/6b96698c-4026-4aa4-a330-6b8e46d8a56b)

* Die Area:

  ![Screenshot from 2023-11-04 15-22-32](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/f40a3425-b5fa-406f-8cc4-858f0699582d)

* To view the floorplan:

  `$ magic -T /home/nishitajoshi/Desktop/verilog_files/OpenLane/vsdstdcelldesign/libs/sky130A.tech /home/nishitajoshi/Desktop/verilog_files/OpenLane/designs/pes_R2_4BM/runs/RUN_2023.11.04_07.24.39/tmp/merged.nom.lef def read pes_R2_4BM.def &`

![Screenshot from 2023-11-04 15-31-19](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/dbacfdf0-ff5b-42dc-aebf-37e35eedf0af)

![Screenshot from 2023-11-04 16-00-23](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/733b0a89-dc5e-4cf2-834b-7c9475c5b9e1)

### Placement:
* For placement: `run_placement`
  
  ![Screenshot from 2023-11-04 15-32-35](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/0fd7d2b2-3f72-4988-be94-e89e10d0b414)

* To view the placement:
  `$ magic -T /home/nishitajoshi/Desktop/verilog_files/OpenLane/vsdstdcelldesign/libs/sky130A.tech /home/nishitajoshi/Desktop/verilog_files/OpenLane/designs/pes_R2_4BM/runs/RUN_2023.11.04_07.24.39/tmp/merged.nom.lef def read pes_R2_4BM.def &`

![Screenshot from 2023-11-04 15-35-37](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/980828da-f2a5-4ffd-85cf-c8ecf3f6072f)

![Screenshot from 2023-11-04 16-01-21](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/8b556855-f43c-4c4b-9ea8-cb0ef200ab2d)

* The sky130_vsdinv will be present in the netlist and .def file after placement:

  ![Screenshot from 2023-11-04 15-38-25](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/8c1eb869-fa65-444b-9777-7ac993d8382c)

  ![Screenshot from 2023-11-04 15-39-19](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/48902121-ad7d-4ae7-846f-0029a230e72a)

### Clock Tree Synthesis(CTS):
* For CTS: `run_cts`
  
  ![Screenshot from 2023-11-04 15-46-18](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/fc8684f9-1347-4b2f-876a-863a20536f40)

* Reports Generated:
  + **Power Report:**

    ![Screenshot from 2023-11-04 16-03-11](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/56926ea0-179e-4d7a-bfd2-e4e78325b6e9)

  + **Skew Report:**

    ![Screenshot from 2023-11-04 16-03-27](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/63772dfc-8964-4783-aa61-a9887f4fff18)

    ![Screenshot from 2023-11-04 16-04-10](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/294f59af-fdbd-4a61-a19b-f3f440d0303b)

  + **Area Report:**

    ![Screenshot from 2023-11-04 16-04-27](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/d3bc701c-04ab-436f-8511-bd95f8df5cdc)


### Routing:
* For routing: `run_routing`
  
  ![Screenshot from 2023-11-04 15-49-08](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/0c6b1b89-1e5a-47f9-91b4-97d047d09a3e)

* To view the routing layout:
  `$ magic -T /home/nishitajoshi/Desktop/verilog_files/OpenLane/vsdstdcelldesign/libs/sky130A.tech /home/nishitajoshi/Desktop/verilog_files/OpenLane/designs/pes_R2_4BM/runs/RUN_2023.11.04_07.24.39/tmp/merged.nom.lef def read pes_R2_4BM.def &`

  ![Screenshot from 2023-11-04 15-49-47](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/408a7c4f-0462-49f0-99dc-dd8d03e3a6ba)

  ![Screenshot from 2023-11-04 16-05-14](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/8e13740f-2bf6-441e-a5e6-ba9f2aef307b)

  + Sky130_vsdinv in Layout view:

  ![Screenshot from 2023-11-04 16-18-59](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/3a740203-ef38-4ea7-9790-97a9a3fb1c49)

  + Area Report in magic:

  ![Screenshot from 2023-11-04 16-25-41](https://github.com/NishitaNJ/pes_R2_4BM/assets/142140741/018df610-de43-4bd9-acca-241c10837801)

  Area = 5806.5 $um^2$










 
