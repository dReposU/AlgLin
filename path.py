def escape_backslashes(input_string):
    return input_string.replace("\\", "\\\\")

# User input
original_string = input("Enter the file path: ")
escaped_string = escape_backslashes(original_string)
print(escaped_string)