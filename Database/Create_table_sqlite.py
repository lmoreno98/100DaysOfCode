# Work with data base

# Connection
# Cursor
# Execute
# Commit
# Close

import sqlite3

# Func to create a table
def createtable():
    # Conection of database
    conn = sqlite3.connect("lite.db")
    # Cursor
    cur = conn.cursor()
    #Execute the querys
    cur.execute("CREATE TABLE data(Rollno INTEGER, Name TEXT, Marks REAL)")
    # Commit to change the values in the database
    conn.commit()
    # Close to end the database
    conn.close()

createtable()
