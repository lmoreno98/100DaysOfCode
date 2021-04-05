import sqlite3

# Func to create a table
def view():
    # Conection of database
    conn = sqlite3.connect("lite.db")
    # Cursor
    cur = conn.cursor()
    #Execute the querys
    cur.execute("SELECT * FROM data")
    rows = cur.fetchall()
    # Commit to change the values in the database
    conn.commit()
    # Close to end the database
    conn.close()
    return rows

print(view())
