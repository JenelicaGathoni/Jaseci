def safe_calculate_gpa(grades: list[int]) -> float{
    try { 
        if len(grades) == 0{
            raise ValueError ("No grades provided");

        }
        total = sum(grades);
        return total/len(grades);

    }except ValueError as e{
        print(f"Error: {e}");
        return 0.0;
    }
}
def validate_grade (grade: list[int]) -> float{
    if grade < 0 or grade > 100{
        raise ValueError(print(f"Grade {grade} is out of valid range"));
    }
}

with entry{
    valid_grades: list[int] = [150,345,108];
    gpa: float = safe_calculate_gpa(valid_grades);
    print(f"The calculated gpa is {gpa}");


    
}