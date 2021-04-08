import sqlite3
from tkinter import *

def createtable():
    conn = sqlite3.connect("Database.db")
    cur = conn.cursor()
    cur.execute("CREATE TABLE IF NOT EXISTS data(Id INTEGER PRIMARY KEY ,Date TEXT,Earning INTEGER,Exercise TEXT,Study TEXT,Diet TEXT,python TEXT)")
    conn.commit()
    conn.close()

def insert_data(Date,Earning,Exercise,Study,Diet,Python):
    conn = sqlite3.connect("Database.db")
    cur = conn.cursor()
    cur.execute("INSERT INTO data VALUES(NULL, ?,?,?,?,?,?)",(Date,Earning,Exercise,Study,Diet,Python))
    conn.commit()
    conn.close()

def view():
    conn = sqlite3.connect("Database.db")
    cur = conn.cursor()
    cur.execute("SELECT * FROM data")
    rows = cur.fetchall()
    conn.commit()
    conn.close()
    return rows

def delete(id):
    conn = sqlite3.connect("Database.db")
    cur = conn.cursor()
    cur.execute("DELETE FROM data WHERE Id = ?", (id,))
    conn.commit()
    conn.close()

def search(date='' , earnings='' , exercise='' , study='' , diet='' , python=''):
    conn = sqlite3.connect('Database.db')
    cur = conn.cursor()
    cur.execute("SELECT * FROM data WHERE Date=?  OR Earning=? OR Exercise=? OR Study=? OR Diet=? OR Python=?" , (date , earnings , exercise , study , diet , python))
    rows = cur.fetchall()
    conn.commit()
    conn.close()
    return rows

createtable()
