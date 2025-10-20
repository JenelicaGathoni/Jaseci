# I want to create a dictionary of technologies made in the movie Foundation
# Then I want to loop over the dictionary and find out how many each ruler created

# We use for loops when You know how many times you want the loop to run, 
# or you’re looping over a sequence (like a list, string, range, or dictionary).

 
def technology_owners(technologies: dict[str, dict[str,str]]) -> str{
    inventor_list: dict[str, int] = {};
    
    for (technology, properties) in technologies.items(){
       
        inventor: str = properties["inventor"];

        if inventor in inventor_list{
            inventor_list[inventor] +=1;
        }else {
            inventor_list[inventor] =1;
        }
        


    }
   
  print(inventor_list);
}
"""
Write a function filter_by_purpose(technologies: dict, purpose_keyword: str) 
that takes the technologies dictionary and returns a list of technology names 
whose purpose string contains the purpose_keyword (case-insensitive).
"""
def filter_by_purpose(technologies: dict, purpose_keyword: str){
    for (technology,purpose) in technologies.items(){
        purpose: str = purpose["purpose"];

        if purpose in technologies == purpose_keyword{
            return technologies.keys[];
        }


        
    }
}

with entry{
    technologies: dict[str,dict[str,str]] = {
        "jump drive": {"inventor": "empire", "purpose": "faster than light travel"},
        "prime radiant": {"inventor": "hari seldon", "purpose": "store phycohistoric equations"},
        "vault": {"inventor":"hari seldon", "purpose": "store foundation messages"},
        "cryo_pod": {"inventor":"empire", "purpose": "long term stasis during interstellar journeys"},
        "star_bridge": {"inventor":"empire", "purpose": "transit from the surface of the planet to underground buildings"},



    };
     technology_owners(technologies);
     filter_by_purpose(technologies, "faster than light travel");
   
   
   
}
