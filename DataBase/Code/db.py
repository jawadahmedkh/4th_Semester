import sqlite3

conn = sqlite3.connect('mydb.db')
cursor = conn.cursor()

cursor.execute(
    """
CRETE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY name TEXT)"""
)

cursor.execute("INSERT INTO users")