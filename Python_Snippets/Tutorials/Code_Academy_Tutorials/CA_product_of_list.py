def product(int_list):
  total = 1
  for i in range(len(int_list)):
    total = total * int_list[i]
  return total