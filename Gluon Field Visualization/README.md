# 🌌 Gluon Field Visualization (Processing)

This project is a **Gluon Field Visualization**, inspired by the complex interactions of **quarks and gluons** in quantum chromodynamics (QCD). The visualization represents the **dynamic, ever-shifting nature of gluon fields**, where particles oscillate and interact in a vibrant 3D space.

## ✨ Concept

The visualization simulates **particles** moving in **circular trajectories**, influenced by sinusoidal waveforms. The movement captures the idea of **color charge interactions** within the quantum field, introducing controlled randomness to create an organic, fluid motion.

## 🎨 Features

- **3D dynamic particle system** created using `Processing` with `P3D` mode.
- **Rotational and oscillatory motion**, mimicking quantum fluctuations.
- **Smooth color transitions**, based on trigonometric functions.
- **Trail effect** that enhances the illusion of interconnected gluons.

## 🚀 How to Run

1. Install [Processing](https://processing.org/download/).
2. Open the `.pde` file in Processing.
3. Click **Run** to start the visualization.

## 🖥️ Code Breakdown

```java
int numParticles = 200; 
float[] angleX, angleY, radius; 
float[] speed, zPos, zSpeed; 
```
- Defines the **number of particles** and their attributes.
- Arrays store **position, speed, and oscillation factors**.

```java
angleX[i] += speed[i] * sin(frameCount * 0.01 + i); 
angleY[i] += speed[i] * cos(frameCount * 0.01 + i); 
```
- Updates each particle's motion in **circular trajectories**.

```java
stroke(r, g, b, 180); 
pushMatrix();
translate(x, y, z);
sphere(5);
popMatrix();
```
- Renders particles as **small spheres** with dynamic colors.

```java
line(x1, y1, z1, x2, y2, z2); 
```
- Draws **connecting lines**, symbolizing the **gluon field flux**.

## 📜 License

This project is licensed under the **MIT License**. You are free to use, modify, and distribute the code as long as you include the original license notice. See the [LICENSE](LICENSE) file for more details.

---

Enjoy experimenting with this mesmerizing **Gluon Field Visualization**! ⚛️


