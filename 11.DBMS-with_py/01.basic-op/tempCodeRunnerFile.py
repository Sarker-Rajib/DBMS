import mysql.connector

db_name = 'python_test_db'

mydbConnecton = mysql.connector.connect(
    host = 'localhost',
    user='root',
    passwd='password1',
    database=db_name
)


# create a table
my_cursor = mydbConnecton.cursor()
sql_query = """
               UPDATE Student
               Set Name = "The Sarker"
               WHERE Name = "Rajib Sarker"
            """
my_cursor.execute(sql_query)
mydbConnecton.commit()
print("'Succesfully Inserted'")