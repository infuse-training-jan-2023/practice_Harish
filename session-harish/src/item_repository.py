from flask import Flask, Response
import sqlite3
import csv
class ItemRepository:
    
    def __init__(self) -> None:   
        self.db_path = 'todo.db'
        self.connection = None
    def connect_db(self):
        if self.connection is None:
            self.connection =  sqlite3.connect(self.db_path, check_same_thread=False)    
    
    def get_all_items(self):
        try:
            self.connect_db()
            cursor = self.connection.cursor()
            cursor.execute('select * from items')
            rows = cursor.fetchall()
            return cursor,rows
        except Exception as e:
            raise Exception('Error: ', e)
    
    def add_item(self, item, reminder):
        try:
            self.connect_db()
            cursor = self.connection.cursor()
            insert_cursor = cursor.execute('insert into items(item, status, reminder) values(?,?,?)', (item, 'Not Started', reminder))
            self.connection.commit()
            return {
                'id': insert_cursor.lastrowid,
                'item': item,
                'status': 'Not Started',
                'reminder': reminder
            }
        except Exception as e:
            raise Exception('Error: ', e)
    
    def delete_item(self,id):
        try:
            self.connect_db()
            cursor = self.connection.cursor()
            delete_cursor = cursor.execute('delete from items where id=?',(id,))
            self.connection.commit()
            if(delete_cursor.rowcount>0):
                return {"status":'item deleted successfully'}
            else:
                return {"status":'item unable to deleted'}
        except Exception as e:
            raise Exception('Error: ', e)
    def get_item(self,id):
        try:
            self.connect_db()
            cursor = self.connection.cursor()
            cursor.execute('select * from items where id=?',(id,))
            row=cursor.fetchall()
            self.connection.commit()
            return row
        except Exception as e:
            raise Exception('Error: ', e)
        
    def update_item(self,id,update_item):
        try:
            self.connect_db()
            cursor = self.connection.cursor()
            for key in update_item.keys():
                cursor.execute(f'update  items set {key}=? where id=?', (update_item[key],id,))
            self.connection.commit()     
            return {'status': "item updated successfully"}
        except Exception as e:
            raise Exception('Error: ', e)     