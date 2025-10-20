#filter helps you pick the things you want from a collection

def adjust_score(score: int) -> int{
    
        if score >= 65{
             score -= 5;

        }else {
            score += 5;
        }
        return score;
    
    
    
}
with entry{
    scores: list[int] = [50,92, 86,75,47,65];

    passing_scores = list(filter(lambda  score:float: score >= 60, scores));
    print(passing_scores);

    standardized_grades =list(map(adjust_score, scores));
    print(standardized_grades);
}

#map decides how to transform each thing in the collection

