def add (a:float, b: float) ->float{
    return a +b;
}
def subtract (a:float, b: float) ->float{
    return a-b;
}
def multiply (a:float, b: float) ->float{
    return a * b;
}
def divide (a:float, b: float) ->float{
    return a / b;
}
with entry{
    print("=== simple calculator ===");

    num1: float =8;
    num2: float = 5;
    print(f"{num1 + num2} == {add(num1,num2)}");
    print(f"{num1 - num2} == {subtract(num1,num2)}");
    print(f"{num1 * num2} == {multiply(num1,num2)}");
    print(f"{num1 / num2} == {divide(num1,num2)}");
}
