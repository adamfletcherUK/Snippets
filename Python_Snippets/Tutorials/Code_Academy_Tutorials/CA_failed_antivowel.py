def anti_vowel(text):
  vowels = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
  word =[]
  for i in text:
    word.append(i)
  for vowel in range(len(vowels)):
    print (vowel),
    print vowels[vowel]
    for letter in range(len(word)):
      print (word[letter]),
      if vowels[vowel] == word[letter]:
        print "Cupcake match"
    print
  return word

anti_vowel("Apple")