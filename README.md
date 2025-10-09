# 🧭 Aerobalance Control System — PID, SMC and H∞ Controllers

This project implements and compares different control strategies for an **aerobalance system**, where a single drone motor located at one corner is used to maintain the platform at a desired angle.  
The goal is to minimize the system's response to disturbances and reduce noise sensitivity through the design and tuning of various controllers.

## 🧩 Overview

The project explores three different control techniques to stabilize and control the aerobalance system:

1. **PID Controller** — A classical proportional-integral-derivative controller, tuned to achieve a balance between response speed and stability.  
2. **SMC (Sliding Mode Control)** — A robust nonlinear control method designed to handle system uncertainties and external disturbances.  
3. **H∞ Controller** — An optimal control approach aiming to minimize the worst-case impact of model uncertainties and noise on system performance.

Each controller was designed, modeled, and tested in **MATLAB/Simulink**, with corresponding **discretization** and **translation to Arduino code** for potential real-time implementation.

Although this repository does not include photos or videos of the physical setup, all modeling and simulation results are provided for reference and reproducibility.

---

## 📂 Project Structure

📦 Aerobalance-Control
┣ 📂 CONSTANTES/ # Continuous observer developed
┣ 📂 ConexionArduino_ert_rtw/ # Discretized SMC implementation (incomplete)
┣ 📂 HINF/ # H∞ controller design and tuning
┣ 📂 H_inf_implementacion_ert_rtw/# H∞ implementation (oscillation reduced)
┣ 📂 Implementacion_PID_ert_rtw/ # PID implementation (pending final validation)
┣ 📂 LINEALIZACION/ # Linearization of the aerobalance model
┣ 📂 OBSERVADOR/ # Continuous observer model (SMC tested)
┣ 📂 PID/ # PID controller scripts and simulations
┣ 📂 PruebaFuerza/ # Force response and validation tests
┣ 📂 SMC/ # Sliding Mode Control design and tests
┣ 📂 SMCFinalDiscreto_ert_rtw/ # Final discrete SMC implementation (working)
┣ 📂 slprj/ # Simulink project files (auto-generated)
┗ 📜 README.md


### Folder Summary

- **CONSTANTES/** – Contains the observer design for continuous-time estimation.  
- **SMC/** and **SMCFinalDiscreto_ert_rtw/** – Implementation and tuning of the Sliding Mode Controller (continuous and discrete versions).  
- **PID/** and **Implementacion_PID_ert_rtw/** – Classical PID control implementation and testing.  
- **HINF/** and **H_inf_implementacion_ert_rtw/** – H∞ controller design, simulation, and discrete implementation.  
- **LINEALIZACION/** – Linearization of the nonlinear aerobalance dynamics.  
- **OBSERVADOR/** – Continuous observer used for state estimation.  
- **PruebaFuerza/** – Force response validation scripts and robustness tests.  
- **ConexionArduino_ert_rtw/** – Incomplete Arduino connection and discretization test setup.  
- **slprj/** – Automatically generated files by Simulink during code generation.

---

## ⚙️ Tools and Requirements

- MATLAB R2023a (or later)
- Simulink (for dynamic simulations and auto code generation)
- Arduino IDE (for embedded implementation)
- Basic hardware setup: microcontroller (e.g. Arduino Uno), single drone motor, IMU sensor, and power supply.

---

## 📈 Results and Discussion

Simulation results show the comparative behavior of each control technique in terms of:
- Disturbance rejection
- Steady-state accuracy
- Noise sensitivity
- Control effort

The **SMC** and **H∞** controllers demonstrated superior robustness against noise and perturbations, while the **PID** controller offered simplicity and ease of tuning for basic stability.

---

## 🧑‍💻 Author

**Jose Miguel Alfaro Castillo**  
MSc Candidate in Data Science and Artificial Intelligence  
[josemiguelalfarocastillo.github.io](https://github.com/josemiguelalfarocastillo)

---

## 📜 License

This project is released under the MIT License — feel free to use, modify, and distribute with proper attribution.
