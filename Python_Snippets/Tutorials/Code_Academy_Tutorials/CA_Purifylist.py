def purify(num_list):
  pure_list = []
  for i in range(len(num_list)):
    if num_list[i] % 2 == 0:
      pure_list.append(num_list[i])
  return pure_list