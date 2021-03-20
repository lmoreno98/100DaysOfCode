table = []
game = 0

def fill_table_x(table):
    for aux in range(9):
        table.append(" ")


def show_table(table):
    print(" ")
    print(f"     |  {table[0]}  |  {table[1]}  |  {table[2]}  |")
    print("     |-----|-----|-----|")
    print(f"     |  {table[3]}  |  {table[4]}  |  {table[5]}  |")
    print("     |-----|-----|-----|")
    print(f"     |  {table[6]}  |  {table[7]}  |  {table[8]}  |")
    print(" ")

def fill_cell(table, opcion):
    while True:
        value = int(input("Put a number between 1-9: ")) -1
        if table[value] == " ":
            table[value] = opcion
            return False
        else:
            print("The cell is already used")


def verif_vertical(table, opcion):
    for i in range(0,7,3):
        if table[i] == table[i+1] and table[i] == table[i+2] and table[i] == opcion:
            print(f"{opcion} win game")
            return 0


def verif_horizontal(table, opcion):
    for i in range(0,3):
        if table[i] == table[i+3] and table[i] == table[i+6] and table[i] == opcion:
            print(f"{opcion} win game")
            return 0

def verif_cross(table, opcion):
    if table[0] == table[4] and table[0] == table[8] and table[0] == opcion:
        print(f"{opcion} win game")
        return 0

    elif table[2] == table[4] and table[2] == table[6] and table[2] == opcion:
        print(f"{opcion} win game")
        return 0



def win_game(table, opcion):
    if verif_horizontal(table, opcion) == 0:
        return 0
    elif verif_vertical(table, opcion) == 0:
        return 0
    elif verif_cross(table, opcion) == 0:
        return 0

fill_table_x(table)
show_table(table)

while game != 9:
    if game % 2 == 0:
        print("Turn of player 1")
        fill_cell(table, "X")
        show_table(table)
        if win_game(table, "X") == 0:
            game = 9
        else:
            game = game +1

    else:
        print("Computer Turn")
        fill_cell(table,"0")
        show_table(table)
        if win_game(table, "0") == 0:
            game = 9
        else:
            game = game + 1
