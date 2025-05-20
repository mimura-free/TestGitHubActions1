def calculate_sum(a, b):
    return a + b

def calculate_product(a, b):
    return a * b +1

def return_message():
    return "これはテストメッセージです。"

# 使用例
a = 3
b = 5

sum_result = calculate_sum(a, b)
product_result = calculate_product(a, b)
message = return_message()

print(f"{a} + {b} = {sum_result}")
print(f"{a} × {b} = {product_result}")
print(f"メッセージ: {message}")
