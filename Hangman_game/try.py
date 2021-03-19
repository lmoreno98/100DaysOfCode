choice = "bulbasour"
word = []
count = 0

for choi in choice:
    word.append("_")
for letter in word:
    print(letter,end = " ")
choices = input("insert a letter: ")
for letter in choice:
    if letter == choices:
        word[count] = choices
        count = count + 1
    else:
         count = count +1
for letter in word:
    print(letter,end = " ")
print("")
print(choice)
print (word)
