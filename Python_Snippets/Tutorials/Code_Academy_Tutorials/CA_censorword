def censor(text,word):
  text = text.split()
  print text[1]
  for i in range(len(text)):
    if text[i] == word:
      text[i] = "*" * len(text[i])
  censored_text = " ".join(text)
  return censored_text

print censor("this hack is wack hack", "hack")