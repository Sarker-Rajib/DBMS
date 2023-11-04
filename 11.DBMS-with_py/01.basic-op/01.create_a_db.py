import mysql.connector

mydbConnecton = mysql.connector.connect(
    host = 'localhost',
    user='root',
    passwd='password1'
)

# create a database
db_name = 'python_test_db'
my_cursor = mydbConnecton.cursor()
sql_query = 'CREATE DATABASE ' + db_name
my_cursor.execute(sql_query)

# print(mydbConnecton)