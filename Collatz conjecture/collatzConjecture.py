def collatz_sequence(n):
    if n < 1:
        raise ValueError("Sayı 1'den küçük olamaz.")

    sequence = [n]
    while n != 1:
        if n % 2 == 0:
            n //= 2
        else:
            n = 3 * n + 1
        sequence.append(n)
    return sequence

try:
    number = int(input("Bir sayı girin: "))
    result = collatz_sequence(number)
    print("Collatz Dizisi:", result)
except ValueError as e:
    print("Hata:", e)
