import os
import psycopg2
import pandas as pd
from dotenv import load_dotenv

load_dotenv()  # reads .env into os.environ

conn = psycopg2.connect(
    host=os.getenv("PG_HOST", "localhost"),   # use "postgres" if running inside Docker
    port=int(os.getenv("PG_SERVER_HOST_PORT", 5432)),
    database=os.getenv("PG_DB", "mydb"),
    user=os.getenv("PG_USER", "myuser"),
    password=os.getenv("PG_PASSWORD", "mypassword"),
)

query = """
SELECT *
FROM orders;
"""

df = pd.read_sql(query, conn)

print(df)

conn.close()