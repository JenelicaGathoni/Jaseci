# I want to create three characters from an object called cleon
# Then I want to use conditional statements to give the characters roles depending on the name

obj cleon{
    has name: str;
    has role: str;

    def role_assigner()->None {
        if self.name == "day"{
            self.role = "Main ruler";

        }elif self.name == "dawn"{
            self.role = "Main learner";
        }elif self.name == "dusk"{
            self.role = "Main Adviser";
        }

    }
}
with entry{
    emperor_day = cleon(name = "day", role = "trainee");
    emperor_day.role_assigner();
    print(f"This is {emperor_day.name} who's role is {emperor_day.role}");

    #Create a second object, lieutenant_dawn, using the name "dawn" and the role "trainee".
    #Before printing its details, call the role_assigner() method on it. What is the final role printed? 
    #Explain why it changed (or didn't change) based on your implementation.


    lieutenant_dawn = cleon(name = "dawn", role="trainee");
    lieutenant_dawn.role_assigner();
    print(f"This is {lieutenant_dawn.name} who's role is {lieutenant_dawn.role}"); # The role printed changes because the role_assigner method overules any role that was there before.
}

