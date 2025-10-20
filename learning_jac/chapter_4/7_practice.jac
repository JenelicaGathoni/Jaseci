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
#*
Write a function called count_high_scores that takes two integer inputs:
A list of integers (scores).
An integer threshold.
The function should iterate through the list and return the total count of scores that are strictly greater than the provided threshold.
For example: count_high_scores([80, 95, 70, 60], 75) should return 2 (since 80 and 95 are > 75).
*#

def count_high_scores(scores_list: list[int], threshold: int) ->int {
    count: int= 0;
    for score in scores_list{
        if score > threshold{
            count +=1;
        }
       
    }
     return count;

}
#*
Write a function called validate_data that takes a list of numbers. 
The function should check the list for two conditions:
Is the list empty?
Does the list contain any negative numbers?
The function should return True only if the list is not empty AND does not contain any negative numbers. Otherwise, it should return False.
*#
def validate_data(number_list:list[int]) ->bool{
    if not number_list{
        return False;
    }
    for number in number_list{
        if  number<0{
        return False;
   }
    }
return True;
}

#*
You have a list of names: ['alice', 'bob', 'charlie']. 
You want to capitalize the first letter of each name.
Write a function capitalize_names that takes the list and returns a new list with the capitalized names, leaving the original list unchanged
*#
def capitalize_names(names_list: list[str]) -> list[str]{
    capitalized_names = [];
    for name in names_list{
       new_name: str=  name.capitalize();
        capitalized_names.append(new_name);
    }
    return capitalized_names;
}
with entry{
    grades: list[int] = [35,45,67,56,89];
    print(f'The class had an average grade of {calculate_average(grades)}');

    integer_list: list[int] = [1,2,45,8,65, 12,78,90];
    print(process_numbers(integer_list));

    scores_list: list[int] = [34,45,67,89];
    print(count_high_scores(scores_list, 40));

    number_list: list[int] = [45,45];
    print(validate_data(number_list));

    names_list: list[str] = ['alice', 'bob', 'charlie'];
    print(capitalize_names(names_list));
}



