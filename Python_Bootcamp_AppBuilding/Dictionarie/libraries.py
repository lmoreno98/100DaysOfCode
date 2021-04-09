from difflib import get_close_matches
import json


dicctionary = json.load(open("data.json"))
word = input("Enter the word you want to search: ").lower()
pred = get_close_matches(word, dicctionary)
print(len(pred))
if len(pred) > 0:
    print("hola")
