import mysql.connector
import pandas as pd
import sql_maker # A function script made for SQL import

# ===== Open Database Connection =================
#   Replace DB credentials with credentials for
#   your database.
#   todo: input credentials file rather than hard code
# ------------------------------------------------

# Open database connection
mydb = mysql.connector.connect(
  user="adam",
  passwd="password",
  host="localhost",
  database="testing"
)


# ===== Define Input File and Name =============
#   This section is the most changing as you will
#   alter depending on the format your data is in.
#
#   Key Outputs:
#       - input_data_frame = df containing data
#       - table_name = Format("Schema.Table")
# ------------------------------------------------
#   NOTE: If you don't have a Database (Schema)
#         Run: CREATE DATABASE db_name;
#         in the console.
# ------------------------------------------------

csv_filepath = \
    "/Users/adam/Documents/referals_data/mysql/data_import/xero_list_condensed.csv"

input_data_frame = pd.read_csv(csv_filepath)

table_name = "referrals.xero_list_condensed"


# ===== Build and Execute SQL Commands ===========
#   Makes two statements:
#       - Create a Table
#       - Insert into a Table
# ------------------------------------------------
#   NOTE: Import is sensitive to column headers
#         that contain a " " at the end.
# ------------------------------------------------

# Test DB connection, return SQL version
cursor = mydb.cursor()


try:
    cursor.execute(sql_maker.sql_create(table_name,
                                         input_data_frame,
                                        "create"))

    cursor.execute(sql_maker.sql_create(table_name,
                                        input_data_frame,
                                        "insert"))

    mydb.commit()
    print(cursor.rowcount, "Record inserted successfully into Laptop table")
    cursor.close()

except mysql.connector.Error as error:
    print("Failed to insert record into Laptop table {}".format(error))


# ===== Close Database Connection ================
#   Closes the Database connection after running
# ------------------------------------------------

finally:
    if (mydb.is_connected()):
        mydb.close()
        print("MySQL connection is closed")