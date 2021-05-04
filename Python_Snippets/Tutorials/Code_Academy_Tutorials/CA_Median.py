def median(input_list):

  #sort the list numerically
  input_list = sorted(input_list)
  print input_list
  #work out if list has odd or even numbers in it
  if len(input_list) % 2 == 1: #if value is odd
    print "odd pipeline"
    index = int((len(input_list)/ 2) + 0.5)
    median = input_list[index]
    print "median is: %s" %(median)
  else:
    print "even pipeline"
    index = len(input_list) / 2
    print "length list / 2 = %s" %(index)
    upper = input_list[index]
    print "upper number is = %s" %(upper)
    lower = input_list[index - 1]
    print "lower number is = %s" %(lower)
    median = (lower + upper) / 2.0
    print "median is: %s" %(median)
  return median
  
print median([2,1,4,2])