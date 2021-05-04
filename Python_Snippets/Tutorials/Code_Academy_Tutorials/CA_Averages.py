grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def grades_sum(scores):
  total = 0
  for i in range(len(scores)):
    total = total + scores[i]
  return total

def grades_average(grades_input):
  average = grades_sum(grades_input) / float(len(grades_input))
  return average

print grades_average(grades)