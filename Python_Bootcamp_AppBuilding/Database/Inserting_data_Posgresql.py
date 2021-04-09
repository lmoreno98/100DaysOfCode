import psycopg2

# Func to create a table
def insert_data(roll,name,marks):
    # Conection of database
    conn = psycopg2.connect("dbname = 'Data' user = 'postgres' password = '40980849' port = '5432' host = 'localhost' ")
    # Cursor
    cur = conn.cursor()
    #Execute the querys
    cur.execute("INSERT INTO data VALUES(?,?,?)", (roll, name, marks))
    # Commit to change the values in the database
    conn.commit()
    # Close to end the database
    conn.close()

insert_data(4,'pugghero', 100)
