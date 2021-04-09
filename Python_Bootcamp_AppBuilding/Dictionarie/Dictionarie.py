import json
from difflib import get_close_matches

def open_file(file_path):
    with open(filepath) as f:
        data = json.load(f)
    return data


def translate(word, dicctionary):
    pred = get_close_matches(word, dicctionary)
    return pred


def comprobar_palabra():
    word = 0
    while word == 0:
        word = input("Enter the word you want to search: ").lower()
        if word <= "z" and word >= "a":
            pass
        else:
            print("Wrong please insert a word")
            word = 0
    return word


filepath = "data.json"
dicctionary = open_file(filepath)
word = comprobar_palabra()
translate(word, dicctionary)

try:
    print(dicctionary[word][0])
except KeyError:
    pred = translate(word, dicctionary)

    if len(pred) > 0:
        choice = "Null"
        while choice.upper == "Y" or choice == "Null":
            choice = input(f"Did you mean: {pred[0]} Y or N: ")
            if choice.upper() == "Y":
                print(dicctionary[pred[0]][0])
            elif choice.upper() == "N":
                print("We dont have that word in the dicctionary")
            else:
                print("Try again Y or N: ")
    else:
        print("We dont have this word in the dicctionary")
