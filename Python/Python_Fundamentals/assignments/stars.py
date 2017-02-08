def draw_stars(a):
    for i in a:
      if isinstance(i,int):
        print i * "*"
      elif isinstance(i,str):
        print i[0] * len(i)


draw_stars([4,5,1,"Bob",2])

#Partner = Ryan Munguia
