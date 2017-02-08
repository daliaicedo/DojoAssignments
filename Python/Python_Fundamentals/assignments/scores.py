# Write a function that generates ten scores between 60 and 100. Each time a score is generated, your function should display what the grade is for a particular score.
def grades():
  count = 1
  while count <= 10:
    import random
    num = random.randint(60,100)
    if num < 70 and num> 60:
      print "Total", num , ": Your grade is a D"
    if num < 80 and num > 70:
      print "Total", num , ": Your grade is a C"
    if num < 90 and num > 80:
      print "Total", num , ": Your grade is a B"
    if num < 100 and num > 90:
      print "Total", num , ": Your grade is a A"
    count+= 1


grades()
