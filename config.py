import mysql.connector
from mysql.connector import Error

def get_db_connection():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',  # Change this if you have a password
            database='supply_chain',
            charset='utf8'
        )
        return connection
    except Error as e:
        print(f"Database connection error: {e}")
        return None