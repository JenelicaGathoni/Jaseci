#*
Write a function called calculate_average that takes a list of integers representing student grades. 
The function should calculate and return the average of all the grades
*#

def calculate_average(grades: list[int]) -> float{
  if not grades{
    return 0;
  }else{
    sum_of_grades = sum(grades);
    average_of_grades = sum_of_grades/ len(grades);
    return average_of_grades;

  }

    }
#*
Write a function called process_numbers that takes a list of integers. 
It must perform two steps:
Square every number in the list.
Filter the resulting squared numbers to only include those that are less than 100. 
The function should return the final list of squared and filtered numbers.
*#

def process_numbers(integer_list: list[int]) -> list[int]{
    if not integer_list{
        return [];
    }else{
        squared_numbers = list(map(lambda x:int: x*x, integer_list));
    numbers_below_100 = list(filter(lambda x:int: x<100, squared_numbers));
    return numbers_below_100;
    }
}

with entry{
    grades: list[int] = [35,45,67,56,89];
    print(f'The class had an average grade of {calculate_average(grades)}');

    integer_list: list[int] = [1,2,45,8,65, 12,78,90];
    print(process_numbers(integer_list));
}



