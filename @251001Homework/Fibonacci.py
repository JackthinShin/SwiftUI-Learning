a=1
b=1
c=1
n = int(input("请输入项数："))
ans=[]
for i in range(n):
    if i%2==0:
        ans.append(a*2)
    else:
        ans.append(a)
    c=a+b
    a=b
    b=c
print(ans)
