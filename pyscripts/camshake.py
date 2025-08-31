import random



file=open("given.txt","w")

intensity=float(input("Enter intensity (1-10): "))
cycles=int(input("Enter cycle: "))
delay=int(input("Enter delay (in ticks): "))

intensity=intensity/10

lor=[intensity,intensity-0.1,0,intensity*-1,(intensity-0.1)*-1]


d=[]
r=0
for i in range(1,cycles+1):
    r1=random.randint(0,4)
    r2=random.randint(0,4)
    d.append("execute if score camshake gstate matches "+str(i)+" run tp @s ~ ~ ~ ~"+str(lor[r1])+" ~"+str(lor[r2]))

for i in d:
    file.write(i+"\n")


