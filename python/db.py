import os
import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="habit-tracker",
    user=os.environ['postgres'],
    password=os.environ['Guadalupeyea152']
)

cur = conn.cursor()