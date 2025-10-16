import random;

class Game{
    def init(self: Game, attempts: int = 10){
        self.attempts = attempts;
        self.won = False;
    }

    def play(self: Game) {
        raise NotImplementedError("Subclasses must implement this method.");
    }
}

class GuessTheNumberGame(Game){
    def init(self: GuessTheNumberGame, attempts: int = 10){
        super.init(attempts);
        self.correct_number = random.randint(1,10);

    }
    def play(self: GuessTheNumberGame){
        while self.attempts > 0 {
            guess = input("Guess a number between 1 and 10: ");
            if guess.isdigit(){
                self.process_guess(int(guess));
                if self.won{
                    break;
                }
            } else{
                print("That's not a valid number! Try again.")
            }
        }
        if not self.won{
            print("sorry, you didnt guess the number. Better luck next time")
        }
    }
}