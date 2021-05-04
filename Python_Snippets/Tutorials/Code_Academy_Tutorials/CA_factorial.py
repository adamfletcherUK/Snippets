def factorial(x):
  total = x
  x -= 1
  while x > 1:
    total = total * x
    x -= 1
  return total
 

print factorial(0)