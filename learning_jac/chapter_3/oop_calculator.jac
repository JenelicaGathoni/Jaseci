obj calculator{
    has history: list[str] = [];

    def add(a: float, b:float) -> float {
        result: float = a+b;
        self.history.append(f"{a} + {b} ={result}");
        return result;

    }
    
    def multiply(a: float, b:float)  -> float{
        result: float = a*b;
        self.history.append(f"{a} * {b} = {result}");
        return result;

    }
    """
Challenge: 
Add a new method, divide(a: float, b: float) -> float | str, to the calculator object.
If b is not zero, perform the division and return the result as a float.
If b is zero (i.e., you are attempting division by zero), do not perform the division. 
Instead, log an error message to the history (e.g., "Error: Division by zero attempted: 10 / 0") and
return the string "Error: Division by Zero".
Ensure the history recording is correct (using the actual result when successful).
"""
    def divide(a:float, b:float) ->float|str {
        if b != 0 {
            result: float = a/b;
            self.history.append(f"{a}/ {b} = {result}");
            return result;
        }  else {
            error_message: str = "Error: Division by Zero";
            self.history.append(f"{a}/ {b} = {error_message}");
            return error_message;
        }

    }
"""
Challenge:
Add a new method, power(base: float, exponent: float) -> float, that calculates base exponent.
Implement the calculation (The exponentiation operator in Jac, like Python, is **).
Record the operation in the history in a clean format, e.g., "5.0 ^ 2.0 = 25.0".
""" 
    def power(base: float, exponent: float) -> float{
        result: float = base ** exponent;
        self.history.append(f"{base} ^ {exponent} = {result}");
        return result;
    }

    def get_history() -> list[str]{
        return self.history;
    }
"""
Challenge: 
Add a new method, reset_state(), to the calculator object. 
This method should perform two actions:
Clear the entire calculation history.
Add a new entry to the history: "State reset: History cleared.".
"""
    def reset_state() {
        self.history = [];
        self.history.append(f"State Reset: History Cleared");
        
    }
"""
Challenge: 
Add a new method, search_history(query: str) -> list[str]. This method should:
Take a query string (e.g., "* 10", "Error", or "45").
Iterate through the existing self.history.
Return a new list containing only the history entries that contain the query string.
"""

}
with entry{
    calc = calculator();

    result1: float = calc.add(45, 10);
    result2: float = calc.multiply(50,10);
    result3: float| str = calc.divide(30,0);
    result4: float| str = calc.divide(30,10);
    result5: float = calc.power(5,2);

    print(f"Results: {result1}, {result2}, {result3}, {result4}, {result5}");
    
    print("\nCalculation history");
    for entry in calc.get_history(){
        print(f"{entry}");
        
    }
    
  
}



