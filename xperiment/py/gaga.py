p = "ini adalah bahasa gaga"
print(f"{p} => ", end='')

for h in p:
    print(h, end='')
    if h in "aiueo":
        print("g" + h, end="")
print()
