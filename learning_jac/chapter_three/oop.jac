obj character{
    has name: str;
    has age: int;
    has followers: int;
    has mortality: bool = True;

    def verify_info() -> str{
        print(f"Actor {self.name}, who is {self.age} years old, and has {self.followers} is immortal?: {self.mortality} ");
    }
}
with entry{
    question_one =  character(name = "Hari Seldon", age = 2000, followers = 1000000, mortality = False);
    print(question_one.verify_info());
}