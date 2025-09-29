#Walkers are like little workers that you can program
#to travel through your graph of nodes and edges to perform tasks
node country{
    has name: str;
    has infected: bool = False;
    has visited: bool = False;
    
    has isHost: bool = False;
}

edge country_relation{
    has relationship_type: str;
    
}
# this walker will greet any friends it encounters
walker greet_friends{
    can greet with country entry {
        if not here.visited{
            here.visited = True;
            if not here.isHost{
                here.infected = True;
                print("Now you're infected!");
            }else {
                print("I am the host! YOu cannot infect me!");
            }
            print(f"Hello! {here.name}");

            visit [->:country_relation:->];
        }
    }
}
with entry{
#Let's make the countries
Kenya = root++> country(name = "Kenya", isHost = True);
Somalia = root++> country(name = "Somalia");
Uganda = root++> country(name = "Uganda");
Tanzania = root++> country(name = "Tanzania");

#Let's make the country relations:

Kenya +>:country_relation(relationship_type = "enemies"):+> Tanzania;
Kenya +>:country_relation(relationship_type = "friends"):+> Uganda;
Kenya +>:country_relation(relationship_type = "enemies"):+> Somalia;

Kenya[0] spawn greet_friends();
}



#this walker will spread a virus to any enemy country except the host


