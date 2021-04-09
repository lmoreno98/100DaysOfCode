import sqlite3

# Func to create a table
def insert_data(roll,name,marks):
    # Conection of database
    conn = sqlite3.connect("lite.db")
    # Cursor
    cur = conn.cursor()
    #Execute the querys
    cur.execute("INSERT INTO data VALUES(?,?,?)", (roll, name, marks))
    # Commit to change the values in the database
    conn.commit()
    # Close to end the database
    conn.close()

insert_data(4,'pugghero', 100)
