# I want to create three characters from an object called cleon
# Then I want to use conditional statements to give the characters roles depending on the name

obj cleon{
    has name: str;
    has role: str;

    def role_assigner()->str {
        if self.name == "day"{
            self.role = "Main ruler";

        }elif self.name == "dawn"{
            self.role = "Main learner";
        }elif self.name == "dusk"{
            self.role = "Main Adviser";
        }else{
            
           return f"The character {self.name} is not a member of the imperial dynasty!";
          
        }
    return f"The character {self.name} is now {self.role}";
    }
}
with entry{
    emperor_day = cleon(name = "day", role = "trainee");
    status_message = emperor_day.role_assigner();   
    print(status_message);

    emperor_donno = cleon(name = "aurelia", role = "trainee");
    status_message = emperor_donno.role_assigner();
    print(status_message);
}

