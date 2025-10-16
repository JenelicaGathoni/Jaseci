# Use a while loop when You don’t know how many times the loop should run. 
# Instead, you have a condition that decides when to stop.

# I want to use a while loop to find out how smart an AI model could get before it reaches today's hardware limits

with entry{
    intelligence: float = 1.0;
    hardware_limits: float = 70.0;

    while intelligence < hardware_limits{
        improvement:float = intelligence * 2;
        intelligence += improvement;
        print(f"Our AI model now has an intelligence of {intelligence}");
    }
}