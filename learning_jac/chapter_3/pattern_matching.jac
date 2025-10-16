# You use match when you want to check one thing against many possible options.

# I want to check which response my chatbot should give based on the input it receives

def chat(input: str) -> str {
    match greeting{
        case "Hello":
        print("Hello, How are you doing?");
        case "Howdy":
        print("Howdy yourself");
        case "Good Morning":
        print("Good Morning to you too! How can I help you this morning?");
        case "Good Afternoon":
        print("Good Afternoon to you too! How can I help you today?");
        case "Good Evening":
        print("Good evening to you too! How can I help you today?");
        case _:
        print("I missed that! Is that a new greeting?");
        }
}
with entry{
    greeting: str = input("Waiting for your greeting... ");
    greeting = greeting.title().strip();
    chat(greeting);

}
