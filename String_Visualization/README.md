# 🧵 String Visualization (Processing)

This project is a **String Visualization** inspired by the **Spirohedron** shape. It simulates the **vibrational movement of strings**, incorporating an element of randomness similar to **Vera Molnár's 1% disorder algorithm** to introduce slight perturbations to the structure.

## ✨ Concept

The visualization represents **strings oscillating in a dynamic space**, creating a colorful and ever-evolving form. The movement is driven by mathematical sine and cosine functions, layered with **controlled randomness** to simulate real-world string fluctuations.

## 🎨 Features

- **3D Spirohedron-inspired structure** using `Processing` and `P3D` mode.
- **Dynamic color shifts** based on time and position.
- **1% Disorder principle** to slightly distort the regularity, making it visually more organic.
- **Interactive, frame-dependent motion** to create a continuously morphing visual.

## 🚀 How to Run

1. Install [Processing](https://processing.org/download/) on your system.
2. Open the `.pde` file in Processing.
3. Click **Run** to start the visualization.

## 🖥️ Code Breakdown

```java
int numPoints = 1000;
float time = 0;
float randomnessFactor = 0.05;
```
- Defines the **number of points** forming the shape.
- Introduces a **time variable** for dynamic motion.
- Sets a **randomness factor** to introduce slight perturbations.

```java
float baseR = 200 + 80 * sin(4 * t + time) + 50 * cos(7 * t + time * 0.5);
```
- Computes the **base radius** dynamically using **sine and cosine functions**.
- The values evolve over time to create an organic motion.

```java
float randomShift = 1 + randomnessFactor * random(-1, 1);
```
- Introduces a **slight random shift**, following **Vera Molnár’s 1% disorder principle**.

## 📜 License

This project is licensed under the **MIT License**. You are free to use, modify, and distribute the code as long as you include the original license notice. See the [LICENSE](LICENSE) file for more details.

---

Enjoy experimenting with this dynamic **String Visualization**! 🎶


