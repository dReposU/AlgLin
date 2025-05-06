def Pick_in_py(lst, sel, patt=lambda x: x):
    return [val for val, cond in zip(lst, sel) if patt(cond)]

# Example usage:
vars = [1, 2, 3, 4, 5]
coeffs = [0, 1, 0, 1, 1]  # Selection array
result = Pick_in_py(vars, coeffs, lambda x: x != 0)  # Select nonzero elements

print(result)  # Output: [2, 4, 5]

for cond in zip(vars, coeffs):
    print(cond)