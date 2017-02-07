str = "If monkeys like bananas, then I must be a monkey!"
print str.find('monkey')

x = [2,54,-2,7,12,98]
print min(x)
print max(x)

x = ["hello",2,54,-2,7,12,98,"world"]
y = [x[0],x[-1]]
print y

x = [19,2,54,-2,7,12,98,32,10,-3,6]
x.sort()
print x


y = x[0:2]
x.pop(0)
x.pop(0)

x.insert(0,y)
print x
