import random
# Create the image of the dice
dice = ["""
------------
|           |
|     0     |
|           |
-------------""",

"""
------------
|           |
|  0    0   |
|           |
-------------""",

"""
------------
|  0        |
|     0     |
|        0  |
-------------""",

"""
------------
|  0     0  |
|           |
|  0     0  |
-------------""",

"""
------------
|  0     0  |
|     0     |
|  0     0  |
-------------""",

"""
------------
|  0     0  |
|  0     0  |
|  0     0  |
-------------"""
]

#game = True
#choice = "Y"
#print("Welcome to dice game!!!")
#while game == True:
#    if choice == "Y":
#        num = random.randint(0,5)
#        print(dice[num])
#        choice = input("Continue: Y or N  ")
#    elif choice == "W":
#        choice = input("Continue: Y or N  ")
#    elif choice == "N":
#        game = False
#    else:
#        print("Incorrect please enter Y or N")
#        choice = "W"
#print("Thanks for play dice game")


game = True
choice = "Y"
print("Welcome to dice game!!!"),
while game == True:
    if choice == "Y":
        num = random.randint(0,5)
        print(dice[num])
        choice = input("Continue: Y or N ")
    elif choice == "W":
        choice = input("Continue: Y or N  ")
    elif choice == "N":
        game = False
    else:
        print("Incorrect please enter Y or N ")
        choice = "W"
print("Thanks for play dice game")
