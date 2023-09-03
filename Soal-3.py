#Melakukan import mysql connector
import mysql.connector

#Melakukan percobaan koneksi
db = mysql.connector.connect(
   host="localhost",
   user="testuser",
   password="test123",
   database="TESTDB" )

#Membuat object cursor sebagai penanda
cursor = db.cursor()

#Deklarasi SQL QUERY untuk memasukkan record ke DB (KARYAWAN)
sql = """INSERT INTO KARYAWAN(FIRST_NAME,
    LAST_NAME, AGE, SEX, INCOME)
    VALUES ('Mac', 'Mohan', 20, 'M', 2000)"""
try:
   #Eksekusi SQL Command
   cursor.execute(sql)
   #Melakukan perubahan (commit) pada DB
   db.commit()
except:
   #Roll back apabila ada issue
   db.rollback()

#Menutup Koneksi
db.close()