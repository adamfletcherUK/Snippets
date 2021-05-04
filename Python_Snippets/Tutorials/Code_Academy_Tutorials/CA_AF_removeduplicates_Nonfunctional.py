def remove_duplicates(int_list):
  dedupe = []
  for i in range(len(int_list)):
    print "loop 1: %s" %(int_list[i])
    if len(dedupe) == 0:
      dedupe.append(int_list[0])
    for c in range(len(dedupe)):
      print "loop 2: %s" %(dedupe[c])
      if int_list[i] != dedupe[c]:
        print ("adding to list")
        dedupe.append(int_list[i])
      else:
        print ""
  return dedupe

print remove_duplicates([1,1,2,2])