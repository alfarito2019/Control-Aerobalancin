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

## 🧠 Project Structure

