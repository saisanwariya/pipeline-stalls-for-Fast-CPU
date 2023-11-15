<h1 align="center">Pipeline stalls for Fast CPU</h1>

## Overview

This README provides instructions for setting up and running a program using the Xilinx Vivado software. The program consists of Verilog modules that simulate a pipelined CPU.

---

## Program Functionality

The program simulates a pipelined CPU using Verilog modules. It includes several stages of the pipeline, such as instruction fetch, instruction decode, execution, memory access, and write-back. The CPU executes instructions from an instruction memory, and the pipeline stages work together to process instructions in a pipelined fashion.

---

## Software Setup

To run this program on Xilinx Vivado, follow these setup instructions:

1. **Install Xilinx Vivado:** If you haven't already, download and install Xilinx Vivado from the official Xilinx website. Make sure you have a valid license for Vivado.

2. **Project Setup:** Create a new project in Vivado or open an existing one where you want to run the Verilog simulation.

3. **Add Verilog Files:** Add the Verilog source files for this program to your project. You will need to add the Verilog files for the modules provided in your project's source directory.

4. **Compile and Synthesize:** In Vivado, compile and synthesize the design. This step will generate the necessary simulation files and bitstreams.

---

## Running the Program

To run the program using Xilinx Vivado, follow these steps:

1. **Launch Vivado:** Start Xilinx Vivado and open your project.

2. **Simulate the Design:** In Vivado, go to the "Flow Navigator" panel on the left side. Under "Simulation," select "Run Simulation."

3. **Select Simulation Type:** Choose the simulation type you want to run. You can choose between behavioral simulation, post-synthesis simulation, or post-implementation simulation, depending on your needs.

4. **Run Simulation:** Start the simulation by clicking the "Run Simulation" button or the equivalent option in your chosen simulation type.

5. **View Simulation Results:** After the simulation completes, you can view simulation waveforms, analyze the CPU's behavior, and debug any issues if necessary.

---

## Notes

- Make sure to set up the simulation environment, including testbenches and input stimuli, to observe the CPU's behavior accurately.

- You may need to configure the simulation options, such as simulation time, waveform display settings, and debug tools, to effectively analyze the CPU's operation.

- Refer to the Xilinx Vivado documentation and tutorials for more detailed information on using Vivado for Verilog simulation and synthesis.

- Feel free to customize and modify the Verilog modules as needed for your specific project or educational purposes. Ensure you maintain academic integrity and follow your institution's guidelines when using this code as a reference.

---

Please reach out to the author for any questions or clarifications regarding this program or its setup instructions.


# Academic Integrity Statement

Please note that all work included in this project is the original work of the author, and any external sources or references have been properly cited and credited. It is strictly prohibited to copy, reproduce, or use any part of this work without permission from the author.

If you choose to use any part of this work as a reference or resource, you are responsible for ensuring that you do not plagiarize or violate any academic integrity policies or guidelines. The author of this work cannot be held liable for any legal or academic consequences resulting from the misuse or misappropriation of this work.

Any unauthorized copying or use of this work may result in serious consequences, including but not limited to academic penalties, legal action, and damage to personal and professional reputation. Therefore, please use this work only as a reference and always ensure that you properly cite and attribute any sources or references used.

---
