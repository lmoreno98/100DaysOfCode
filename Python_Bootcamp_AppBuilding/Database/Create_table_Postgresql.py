import psycopg2

# Func to create a table
def createtable():
    # Conection of database
    conn = psycopg2.connect("dbname = 'Data' user = 'postgres' password = '40980849' port = '5432' host = 'localhost' ")
    # Cursor
    cur = conn.cursor()
    #Execute the querys
    cur.execute("CREATE TABLE data(Rollno INTEGER, Name TEXT, Marks REAL)")
    # Commit to change the values in the database
    conn.commit()
    # Close to end the database
    conn.close()

createtable()
