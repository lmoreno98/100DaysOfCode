import sqlite3

# Func to create a table
def delete(roll):
    # Conection of database
    conn = sqlite3.connect("lite.db")
    # Cursor
    cur = conn.cursor()
    #Execute the querys
    cur.execute("DELETE FROM data WHERE rollno = ?", (roll,))
    # Commit to change the values in the database
    conn.commit()
    # Close to end the database
    conn.close()

delete(4)