#*
Implement a simple function, get_action_score(feedback_list: list[dict], action_name: str), that iterates through the provided feedback_list. 
If the dictionary with the matching 'action' key is found, return its 'score'. 
If the action is not found after checking the whole list, return a default score of -5.
*#

def get_action_score(feedback_list: list[dict], action_name: str) -> int{
    for feedback in feedback_list{
        if feedback['action'] == action_name{
            return feedback['score'];
        }
    }
    return -5;
}

with entry{
#These are examples of values that people consider valuable
human_feedback: list[dict, dict] = [
    {"action":"help someone", "score": 10},
    {"action":"lie for profit", "score": -8},
    {"action":"learn new skills", "score": 6},
    {"action":"kill a human", "score": -10}
];


print(get_action_score(human_feedback, 'help someone'));
}