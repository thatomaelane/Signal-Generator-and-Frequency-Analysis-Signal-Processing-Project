# Signal Processing - Signal Generator and Frequency Analysis

An interactive MATLAB GUI and Proteus simulation for generating, analyzing, and filtering square and sine wave signals. This project was developed for Digital Signal Processing (DSP) and Signal Analysis, demonstrating waveform generation, FFT analysis, noise addition, and frequency-domain filtering.

---

## Project Overview

This project implements a MATLAB-based graphical user interface (GUI) capable of generating square and sine waves at different frequencies while performing frequency analysis using the Fast Fourier Transform (FFT). Artificial White Gaussian Noise (AWGN) is added to simulate real-world signal interference, after which a Butterworth low-pass filter is used to recover the original signal.

The project is complemented by a Proteus circuit simulation and a detailed engineering report explaining the theoretical background, implementation, and analysis.

---

## Features

- Interactive MATLAB GUI
- Generate Square Waves
- Generate Sine Waves
- Select frequencies:
  - 9 Hz
  - 80 Hz
  - 900 Hz
- Adjustable Signal-to-Noise Ratio (SNR)
- Add AWGN noise
- Butterworth Low-Pass Filtering
- Time Domain Visualization
- Frequency Domain (FFT) Analysis
- Compare Noisy vs Filtered Signals
- Proteus Circuit Simulation

---

## Technologies Used

- MATLAB
- MATLAB App Designer / UI Components
- Signal Processing Toolbox
- Fast Fourier Transform (FFT)
- Butterworth Filters
- Proteus
- Digital Signal Processing (DSP)

---

## Project Structure

```text
Signal_Generator_Frequency_Analysis/
│
├── MATLAB_GUI/
│   └── signal_generator_gui_221847989.m
│
├── Proteus/
│   └── Signal_Generator_Proteus.pdsprj
│
├── Report/
│   └── Signal_Generator_Report.pdf
│
└── README.md
```

---

## Signal Processing Workflow

1. Select signal type (Square or Sine)
2. Select frequency (9 Hz, 80 Hz, or 900 Hz)
3. Choose Signal-to-Noise Ratio (SNR)
4. Generate the waveform
5. Add Gaussian White Noise (AWGN)
6. Apply a Butterworth Low-Pass Filter
7. Visualize:
   - Noisy Time-Domain Signal
   - Filtered Time-Domain Signal
   - Noisy FFT Spectrum
   - Filtered FFT Spectrum

---

## Outputs

The GUI displays:

- Time-Domain Signal (Noisy)
- Time-Domain Signal (Filtered)
- Frequency Spectrum (FFT)
- Filtered Frequency Spectrum

These plots allow comparison of signal quality before and after filtering.

---

## Files Included

- MATLAB Source Code (`.m`)
- Proteus Simulation (`.pdsprj`)
- Project Report (`.pdf`)
- README

---

## Skills Learned

- Digital Signal Processing (DSP)
- MATLAB Programming
- MATLAB GUI Development
- Signal Generation (Square & Sine Waves)
- Fast Fourier Transform (FFT) Analysis
- Frequency Domain Analysis
- Time Domain Signal Analysis
- Butterworth Filter Design
- Low-Pass Signal Filtering
- Additive White Gaussian Noise (AWGN) Simulation
- Signal-to-Noise Ratio (SNR) Analysis
- Digital Filter Implementation
- Proteus Circuit Simulation
- Engineering Data Visualization
- Signal Processing Fundamentals
- Debugging and Testing MATLAB Applications

---

## Author

**Thato Maelane**

Electrical Engineering Student

**Areas of Interest**

- Signal Processing
- Embedded Systems
- Power Systems
- Artificial Intelligence
- Machine Learning

**GitHub:** *(Add your GitHub Profile Link)*

**LinkedIn:** *(Add your LinkedIn Profile Link)*

---

## ⭐ Acknowledgements

Developed as part of a Digital Signal Processing (DSP) practical project to demonstrate waveform generation, FFT-based frequency analysis, noise simulation, digital filtering, MATLAB GUI development, and Proteus circuit simulation.
