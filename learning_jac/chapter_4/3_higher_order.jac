#*
A higher order function is one that either takes another function as  an argument
returns a function or both

***
How do you ensure an AI learns the right values?
I want to design a function that creates another function that evalutes the goodness of an AI's outcome

*#
def value_loader(feedback_data:list[dict,dict])-> callable{
    def value_function(action: str)-> int{
        for sample in feedback_data{
            if sample['action'] == action{
                return sample['score'];
            }
       
            
            
        }
         return 0;
       
    }
 return value_function;
}

with entry{
#These are examples of values that people consider valuable
human_feedback: list[dict, dict] = [
    {"action":"help someone", "score": 10},
    {"action":"lie for profit", "score": -8},
    {"action":"learn new skills", "score": 6},
    {"action":"kill a human", "score": -10}
];

evaluate = value_loader(human_feedback);
print(evaluate("help someone"));
}