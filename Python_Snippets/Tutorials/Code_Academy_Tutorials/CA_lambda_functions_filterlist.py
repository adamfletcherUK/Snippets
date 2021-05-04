squares = [x ** 2 for x in range(1,11)]
print squares
print filter(lambda x: x >= 30 and x <= 70, squares)

garbled = "IXXX aXXmX aXXXnXoXXXXXtXhXeXXXXrX sXXXXeXcXXXrXeXt mXXeXsXXXsXaXXXXXXgXeX!XX"
message = filter(lambda x: x!="X", garbled)
print message