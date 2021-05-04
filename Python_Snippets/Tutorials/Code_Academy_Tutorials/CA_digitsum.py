def digit_sum(n):
    numbers = []
    n = str(n)
    for char in n:
        numbers.append(int(char))
        numsum = sum(list(numbers))
    return numsum

print digit_sum(1234)