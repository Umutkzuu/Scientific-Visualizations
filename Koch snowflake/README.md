# ❄️ Koch Snowflake Visualization

This project visualizes the **Koch Snowflake**, a famous fractal curve, using Processing. The snowflake evolves over **6 iterations**, automatically updating every second. The implementation is based on recursive subdivision, where each line segment is divided into four parts, forming a smaller equilateral triangle in the middle.

## 🌟 Features
- **Recursive Fractal Growth**: The snowflake evolves step-by-step up to **6 iterations**.
- **Smooth Animation**: Updates every second to illustrate the fractal's formation.
- **Mathematical Precision**: Uses vector interpolation to accurately compute the new vertices at each iteration.

## 📜 How It Works
1. The initial shape is an **equilateral triangle**.
2. At each iteration, every line segment is divided into three equal parts.
3. A new **equilateral peak** is created at the center segment, forming the fractal shape.
4. This process repeats, increasing the snowflake's complexity.

## 🎨 Visualization Example
```
Iteration 0: △ (Equilateral Triangle)
Iteration 1: 🔺🔺🔺 (3 smaller peaks per side)
Iteration 2: More intricate fractal edges...
...
Iteration 6: Highly detailed Koch Snowflake ❄️
```

## 🚀 Usage
To run this simulation in Processing:
1. Copy and paste the provided code into **Processing IDE**.
2. Click **Run** ▶️ and watch the snowflake evolve.
3. Modify `maxIterations` to see deeper fractal levels.

## 🛠️ Code Breakdown
- **KochSnowflake Class**: Handles fractal calculations and rendering.
- **kochIteration()**: Generates new vertices based on Koch’s algorithm.
- **display()**: Renders the updated fractal at each iteration.
- **lerp() Function**: Computes interpolation between points for precise transformations.

## 📜 License
This project is licensed under the **MIT License** 📝.

---
❄️ Enjoy experimenting with fractals and feel free to customize the depth of recursion!


