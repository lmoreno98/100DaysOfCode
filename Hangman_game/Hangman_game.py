import random
choices = ["bulbasour", "charizard", "mewtow","Pikachu","Squirtle","Ninetales",
"Golbat","Psyduck","Meowth","Arcanine","Alakazam","‎Gardevoir","Milotic",
"Blaziken","Sceptile"]
word = []
list_letter = []
win = 0
def hide_word(word, choice):
    for choi in choice:
        word.append("_")
    return word


def show_word(word):
    for show in word:
        print(show,end = " ")
    print(" ")


def verif_letter_in_choice(letter,choice, life, word):
    count = 0
    correct = 0
    for words in choice:
        if words == letter:
            word[count] = letter
            count = count + 1
            correct = correct + 1
        else:
            count = count +1
    if correct == 0:
        life = life -1
        print(f"{life} turn are left")
        print(hangman[(life)])
    return word, life

def verif_win(word):
    aux = 0
    for letter in word:
        if letter <= "z" and letter >= "a":
            aux = aux +1
    if aux == len(word):
        return 1

def ask_letter():
    while True:
        letter = input("Type a letter: ")
        if len(letter) == 1:
            if letter in list_letter:
                print("The letter is already used")
            else:
                return letter
        else:
            print("Pleae insert a letter")



life = 10
hangman = [
"-----",
"""
-----
  0
""",

"""
-----
  0
  |
""",
"""
-----
  0
  |
 /
""",
"""
-----
  0
  |
 / \\
""",
"""
-----
\\ 0
  |
 / \\
""",
"""
-----
\\ 0 /
  |
 / \\
""",
"""
-----
\\ 0 /|
  |
 / \\
""",
"""
-----
\\ 0 /_|
  |
 / \\
""",
"""
-----
  0_|
 /|\\
 / \\
"""]


print("Welcome to Pokemon hangman")
hangman = hangman[::-1]
choice = choices[random.randint(0,(len(choices)-1))]
choice = choice.lower()
word = hide_word(word, choice)
show_word(word)

while life != 0:
    letter = ask_letter()
    list_letter.append(letter)
    word, life = verif_letter_in_choice(letter,choice,life,word)
    show_word(word)
    win = verif_win(word)
    if win == 1:
        life = 0
    else:
        pass

if win == 1:
    print("You Win")
else:
    print(f""" You lose
The world was {choice}
The words that was used """, end= " ")
    show_word(list_letter)
