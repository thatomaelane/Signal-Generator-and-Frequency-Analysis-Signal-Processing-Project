# Signal Processing - Signal Generator and Frequency Analysis Using MATLAB & Proteus

> An interactive Digital Signal Processing (DSP) project that generates, analyzes, filters, and visualizes square and sine wave signals using MATLAB, FFT analysis, Butterworth filtering, and Proteus simulation.


![MATLAB](https://img.shields.io/badge/MATLAB-R2023-blue)
![Proteus](https://img.shields.io/badge/Proteus-Simulation-green)
![DSP](https://img.shields.io/badge/Digital%20Signal%20Processing-DSP-orange)
![FFT](https://img.shields.io/badge/FFT-Frequency%20Analysis-red)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

# Project Overview

This project implements an interactive MATLAB graphical user interface (GUI) capable of generating square and sine wave signals at multiple frequencies while performing frequency-domain analysis using the Fast Fourier Transform (FFT). Artificial White Gaussian Noise (AWGN) is added to simulate real-world signal interference, after which a Butterworth low-pass filter is applied to recover the original signal.

The project also includes a Proteus simulation and a comprehensive engineering report explaining the theoretical concepts, implementation, signal processing workflow, and experimental analysis.

---

# Objectives

- Generate square and sine wave signals.
- Simulate noisy signals using AWGN.
- Perform FFT-based frequency analysis.
- Design and apply Butterworth low-pass filters.
- Compare noisy and filtered signals.
- Visualize signals in both time and frequency domains.
- Develop an interactive MATLAB GUI.
- Validate signal generation using Proteus simulation.

---

# Signal Generation

The GUI supports the generation of:

- Square Wave
- Sine Wave

Available frequencies:

- 9 Hz
- 80 Hz
- 900 Hz

Users can also specify the Signal-to-Noise Ratio (SNR) for signal analysis.

---

# Signal Processing Workflow

The implemented workflow includes:

1. Signal Generation
2. Noise Addition (AWGN)
3. Butterworth Low-Pass Filtering
4. Time-Domain Analysis
5. Frequency-Domain Analysis (FFT)
6. Comparison of Noisy and Filtered Signals

---

# Signal Analysis

The application displays four graphical outputs simultaneously:

- Time Domain (Noisy Signal)
- Time Domain (Filtered Signal)
- Frequency Spectrum (FFT of Noisy Signal)
- Frequency Spectrum (FFT of Filtered Signal)

These visualizations demonstrate the effect of filtering on noisy signals.

---

# Technologies Used

- MATLAB
- MATLAB GUI (uifigure)
- Signal Processing Toolbox
- Fast Fourier Transform (FFT)
- Butterworth Filters
- Proteus
- Digital Signal Processing (DSP)

---

# Features

- Interactive MATLAB GUI
- Square Wave Generation
- Sine Wave Generation
- Adjustable Frequency Selection
- Adjustable Signal-to-Noise Ratio (SNR)
- AWGN Noise Simulation
- Butterworth Low-Pass Filtering
- FFT Spectrum Analysis
- Time-Domain Visualization
- Frequency-Domain Visualization
- Proteus Circuit Simulation

---

# Repository Structure

```text
Signal-Generator-Frequency-Analysis/
│
├── README.md
├── signal_generator_gui_221847989.m
├── Signal_Generator_Proteus.pdsprj
├── Report.pdf
├── Images/
└── Results/
```

---

# Skills Demonstrated

- Digital Signal Processing (DSP)
- MATLAB Programming
- MATLAB GUI Development
- Signal Generation
- Frequency Analysis
- Fast Fourier Transform (FFT)
- Butterworth Filter Design
- Noise Reduction Techniques
- Signal Visualization
- Proteus Circuit Simulation
- Engineering Analysis
- Data Visualization
- Electrical & Electronic Engineering

---

# MATLAB Functions & Toolboxes

```matlab
fft
butter
filter
uiaxes
uifigure
uidropdown
uieditfield
uibutton
Signal Processing Toolbox
```

---

# Future Improvements

- Support additional waveform types (Triangle, Sawtooth).
- Allow real-time frequency adjustment.
- Add Bode plot visualization.
- Implement high-pass and band-pass filters.
- Export generated signals to CSV or MAT files.
- Integrate real-time hardware acquisition using Arduino or DAQ devices.

---

# Author

**Thato Maelane**

Bachelor of Engineering Technology (Electrical Engineering)

Tshwane University of Technology

---

## ⭐ If you found this project useful, consider giving the repository a star!
