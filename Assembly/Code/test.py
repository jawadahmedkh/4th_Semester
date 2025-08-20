list = [10,20,30,40,50]
# 50
# 40
# 30
# 20
# 10

i = 0
j = len(list) - 1

while i < j:
    temp = list[i]
    list[i] = list[j]
    list[j] = temp
    j-= 1
    i += 1


print(list)

    