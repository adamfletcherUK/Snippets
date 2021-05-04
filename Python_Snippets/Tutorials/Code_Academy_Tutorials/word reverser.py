def reverse(text):
  word_length = len(text)
  print (word_length)
  as_list = []
  output = ""
  for i in text:
    as_list.append(i)
  print (as_list)
  for i in range(word_length):
    counter = word_length - i
    output = output + as_list[counter - 1]
  return output

print (reverse("apple"))