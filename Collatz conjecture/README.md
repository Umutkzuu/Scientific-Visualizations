# 📜 Collatz Conjecture Visualization

## 🔍 Overview
This Python script demonstrates the **Collatz Conjecture**, a famous unsolved problem in mathematics. The conjecture states that starting with any positive integer:

1. If the number is **even**, divide it by 2.
2. If the number is **odd**, multiply it by 3 and add 1.
3. Repeat the process until you reach **1**.

This process is visualized as a sequence of numbers. The script allows the user to input a number and prints the **Collatz sequence** for that number.

## 🛠 Features
- Accepts user input for any positive integer.
- Computes and prints the full Collatz sequence.
- Handles invalid input gracefully with error messages.

## 🚀 Usage
### ▶️ Run the script
```sh
python collatz.py
```
### ⌨️ Example Input
```sh
Bir sayı girin: 6
```
### 📜 Example Output
```sh
Collatz Dizisi: [6, 3, 10, 5, 16, 8, 4, 2, 1]
```

## ⚙️ Code Explanation
The script follows a simple logic:
1. It takes a user-provided integer `n`.
2. It applies the Collatz transformation iteratively until `n` reaches 1.
3. The resulting sequence is stored in a list and displayed.
4. If an invalid input is provided (like a number less than 1), an error message is displayed.

## 🏛️ Mathematical Significance
The **Collatz Conjecture** is an open problem in mathematics. No matter what number you start with, the sequence always seems to reach **1**, but no formal proof exists. It's an intriguing puzzle that has fascinated mathematicians for decades.

## 💡 Future Enhancements
- **Visualization:** Plot the sequence using Matplotlib.
- **Performance Optimization:** Use memoization to reduce redundant calculations.
- **Graphical Interface:** Create an interactive UI to enter numbers and visualize sequences dynamically.

📌 _"Mathematics is not about numbers, equations, computations, or algorithms: it is about understanding."_ – William Paul Thurston

---



