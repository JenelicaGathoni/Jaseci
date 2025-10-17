def calculator(a:float, b:float, operation: callable) -> float{
    return operation(a,b);
}

def add(a:float, b:float) -> float{
    return a+b;
}
def subtract(a:float, b:float) -> float{
    return a-b;
}

glob operations: dict[str,callable] = {
    "add":add,
    "subtract": subtract,
    
};

with entry{
    a: float=10.0;
    b:float= 5.0;

    operation_name: str= "minus";
    if operation_name in operations{
        selected_operations_func =operations[operation_name];
        result: float = calculator(a,b, selected_operations_func);
        print(f"Result of {operation_name} {a}{b} = {result}");
    }else{
        print(f"operation '{operation_name}' is not supported.");
    }
}