import random
def coinToss():
  count = 1
  totalHeads= 0
  totalTails= 0
  while count <= 5000:
    num = random.randint(0,1)
    print num
    if num == 1:
      totalHeads +=1
      print "You got heads! So far you have gotten heads", totalHeads, "times!"
    if num == 0:
      totalTails+=1
      print "You got tails! So far you have gotten tails", totalTails, "times!"
    count = count+1


coinToss()

#CODING DOJO WAY
# Create a program that simulates throwing a coin 5,000 times.
# Your program should display how many times the head/tails appears

import random
import math

print 'Starting the program'

head_count = 0
tail_count = 0
for i in range(1,5001):
    rand = round(random.random())
    if rand == 0:
        face = 'tail'
        tail_count += 1
    else:
        face = 'head'
        head_count += 1
    print "Attempt #"+str(i)+": Throwing a coin...It's a "+face+"!...Got "+str(head_count)+" head(s) and "+str(tail_count)+" tail(s) so far"

print 'Ending the program, thank you!'
