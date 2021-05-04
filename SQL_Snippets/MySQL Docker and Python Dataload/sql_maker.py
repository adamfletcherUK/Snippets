import math


# ===== Generate the Full SQL Query ==============
#   This section handles is a wrapper for the
#   other functions making one function that will
#   handle the creation of the entire SQL script.
# ------------------------------------------------

#Todo: Figure out why this doesn't work in the main script

def to_sql(TABLE_NAME, input_data_frame):
    sql_statement = sql_create(TABLE_NAME, input_data_frame, "create")
    sql_statement += sql_create(TABLE_NAME, input_data_frame, "insert")
    return sql_statement


# ===== Generate the SQL Create Table Command ====
#   This section handles the functions that build
#   the start of either the CREATE TABLE section
#   OR the INSERT INTO section of the SQL script.
# ------------------------------------------------

def sql_create(TABLE_NAME, input_data_frame, create_insert):
    if create_insert == "create":
        create_statement = '''CREATE TABLE IF NOT EXISTS {} ('''.format(TABLE_NAME)
        create_statement += dtype_loop(input_data_frame)
        return create_statement
    elif create_insert == "insert":
        create_statement = '''INSERT INTO {} VALUES '''.format(TABLE_NAME)
        create_statement += insert_statement_loop(input_data_frame)
        return create_statement
    else:
        return print("Error: Select either 'create' or 'insert' as option")


# ===== Generate the SQL Create Table Command ====
#   This section handles the functions that build
#   the CREATE TABLE section of the SQL script.
# ------------------------------------------------


def col_type(col_dtype):
    if col_dtype == "int64":
        return "INT"
    if col_dtype == "float64":
        return "FLOAT"
    elif col_dtype == "object":
        return "VARCHAR(255) CHARACTER SET utf8"


def dtype_loop(input_data_frame):
    dtype_list = ''
    for i in range(len(input_data_frame.columns)):
        if i < len(input_data_frame.columns) - 1:  # python indexing starts at 0
            dtype_list += str('''`{}` {},'''.format(input_data_frame.columns[i],
                                                    col_type(input_data_frame.dtypes[i])))
        if i == len(input_data_frame.columns) - 1:  # python indexing starts at 0
            dtype_list += str('''`{}` {} );'''.format(input_data_frame.columns[i],
                                                      col_type(input_data_frame.dtypes[i])))
    return dtype_list


# ===== Generate the SQL insert data Command =====
#   This section handles the functions that build
#   the INSERT INTO TABLE section of the SQL
#   script.
#   todo: figure out a method to make 1Y keys
# ------------------------------------------------


def create_insert_row(input_data_frame, index):
    statement = "("
    for i in range(input_data_frame.shape[1]):
        DF_ROW = input_data_frame.values[index, i]
        if i < input_data_frame.shape[1] - 1:
            try:
                if math.isnan(DF_ROW) == True:
                    tmp = '''NULL, '''
                    statement += tmp
                else:
                    tmp = ('''{}, '''.format(str(DF_ROW)))
                    statement += tmp
            except:
                tmp = ('''"{}", '''.format(str(DF_ROW)))
                statement += tmp
        if i == input_data_frame.shape[1] - 1:
            try:
                if math.isnan(DF_ROW) == True:
                    tmp = "NULL)"
                    statement += tmp
                else:
                    tmp = ('''"{}")'''.format(str(DF_ROW)))
                    statement += tmp
            except:
                tmp = ('''"{}")'''.format(str(DF_ROW)))
                statement += tmp
    return statement


def insert_statement_loop(input_data_frame):
    insert_statement = ""
    for j in range(input_data_frame.shape[0]):
        insert_statement += create_insert_row(input_data_frame, j)
        if j < input_data_frame.shape[0] - 1:
            insert_statement += ", "
        if j == input_data_frame.shape[0] - 1:
            insert_statement += ";"
    return insert_statement