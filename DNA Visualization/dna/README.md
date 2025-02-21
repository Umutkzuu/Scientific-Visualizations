# 🧬 DNA Visualization (Processing)

This project visualizes a **3D DNA double helix** using `Processing`. The simulation dynamically rotates the DNA structure while displaying complementary nucleotide base pairs, offering an engaging representation of genetic information.

## ✨ Features

- **3D Helical Structure**: The DNA strands twist naturally in a **triple loop**.
- **Base Pairing**: The nucleotides (`A`, `T`, `C`, `G`) are randomly assigned and their **complementary bases** are determined.
- **Rotational Controls**: Mouse drag **adjusts the viewing angles**.
- **Realistic Depth & Shading**: `P3D` mode enables **depth perception** with lighting effects.

## 🎨 Visual Representation

- **Blue spheres** represent one side of the DNA strand.
- **Red spheres** represent the complementary bases.
- **Connecting lines** mimic hydrogen bonds between **base pairs**.

## 🚀 How to Run

1. Install [Processing](https://processing.org/download/).
2. Open the `.pde` file in Processing.
3. Click **Run** to start the visualization.

## 🖥️ Code Breakdown

```java
String[] nucleotides = {"A", "T", "C", "G"};
```
- Defines the **DNA bases** used in the simulation.

```java
String complementaryBase(String base) {
  if (base.equals("A")) return "T";
  if (base.equals("T")) return "A";
  if (base.equals("C")) return "G";
  if (base.equals("G")) return "C";
  return "";
}
```
- Implements **base-pairing rules**, ensuring accurate DNA representation.

```java
void mouseDragged() {
  rotateYAngle = map(mouseX, 0, width, -PI, PI);
  rotateXAngle = map(mouseY, 0, height, -PI/2, PI/2);
}
```
- Enables **interactive rotation** based on mouse movement.

## 📜 License

This project is licensed under the **MIT License**. You are free to use, modify, and distribute the code as long as you include the original license notice. See the [LICENSE](LICENSE) file for more details.

---

Enjoy exploring the **DNA Visualization**! 🧬✨


