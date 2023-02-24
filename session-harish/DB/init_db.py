import sqlite3

connnection = sqlite3.connect('todo.db')

with open('DB/schema.sql') as f:
    connnection.executescript(f.read())
    
cursor = connnection.cursor()
cursor.execute("INSERT INTO items (item, status, reminder) VALUES (?, ?, ?)",
('Go to musem', 'NOt started', True)
)

connnection.commit()
connnection.close()