import random

def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def divide(a, b):
    return a / b if b != 0 else "undefined"

if __name__ == "__main__":
    a = random.randint(1, 100)
    b = random.randint(1, 100)
    print(f"Numbers: {a}, {b}")
    print("Add:", add(a, b))
    print("Subtract:", subtract(a, b))
    print("Multiply:", multiply(a, b))
    print("Divide:", divide(a, b))
