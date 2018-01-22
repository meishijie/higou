#-*- coding:utf-8 -*-  
import psycopg2
import time
conn = psycopg2.connect(database='d300t58jc3cqmb',user='zuipkhgmdwrsym',password='a47e4099cbbadd377ea9dc2bc9c655f89f3fa7732fc5dc69002e0b9d0794de75',host='ec2-107-22-229-213.compute-1.amazonaws.com',port='5432')  
cur = conn.cursor()  
cur.execute("insert into articles (title,text,created_at,updated_at) values ('li','china','"+time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) +"','"+time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()) + "')")  
cur.execute("SELECT * FROM articles ")  
rows = cur.fetchall()  
print(rows)  
conn.commit()  
cur.close()  
conn.close()  