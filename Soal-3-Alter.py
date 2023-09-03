import psycopg2

#Establishing the connection
conn = psycopg2.connect(
   database="Kalbe", user='postgres', password='1234', host='localhost', port= '5432'
)
#Setting auto commit false
conn.autocommit = True

#Creating a cursor object using the cursor() method
cursor = conn.cursor()

# Preparing SQL queries to INSERT a record into the database.
cursor.execute('''INSERT INTO Inventory(item_code, item_name, item_price, item_total)
                VALUES (6969, 'Blue Sky', 40000, 100)''')

# Commit your changes in the database
conn.commit()
print("Records inserted........")

# Closing the connection
conn.close()