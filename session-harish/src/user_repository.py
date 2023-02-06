from flask import Flask, Response
import sqlite3
class UserRepository:
    
    def __init__(self) -> None:   
        self.db_path = 'todo.db'
        self.connection = None
    def connect_db(self):
        if self.connection is None:
            self.connection =  sqlite3.connect(self.db_path, check_same_thread=False)    

    def add_user(self,username,email,phone):
        try:
            self.connect_db()
            cursor = self.connection.cursor()
            cursor.execute('insert into users(username,email, phone) values(?,?,?)',(username,email,phone,))
            self.connection.commit()
            return {
                'username': username,
                'email': email,
                'phone': phone
            }
        except Exception as e:
            raise Exception('Error: ', e) 
        
    