# To declare a variable in Jac you specify it's name, type and initial value
with entry{
    food_name: str ="Chapati";
    country_of_origin: str ="Kenya";
    is_sweet: bool = True;
}

#Local variables
def add_numbers(a: int, b:int) ->int{
    result: int = a+b; # This is a local variable
    return result;
}
with entry{
    sum = add_numbers(5,10);
    print(f"Sum: {sum}");
}

"""
Problem: Write a Jac function calculate_split
that takes the total_bill (float), the tip_percentage (int), and the number_of_people (int) as arguments. 
The function should calculate the final bill (including the tip) and then determine the amount_per_person (float).
Expected Output: The function should return the amount_per_person.
"""
def calculate_split(total_bill: float, tip_percentage: int, number_of_people: int) -> float{
    tip_rate_factor: float = 1 +(tip_percentage/100);
    final_bill: float = total_bill*tip_rate_factor;
    amount_per_person: float = final_bill/number_of_people;
    return amount_per_person;
}
with entry{
    amount_per_person = calculate_split(5000, 25, 3);
    print(f"Everyone should pay {amount_per_person}");
    
}

#Global variables
glob school_name: str = "Calijen Academy";
glob passing_grade: int = 75;
glob genius_rank: int = 99;


with entry{
    print(f"Welcome to {school_name}");
    print(f"You have to score above {genius_rank} to take the genius rank classes.");
}

# type any
with entry{
    #this variable can hold any type of value
    grade: any  = 95;
    print(f"The best student scored {grade}");

    grade = "A";
    print(f"This was a clean {grade}");
}
