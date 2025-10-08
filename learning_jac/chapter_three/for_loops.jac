# I want to create a dictionary of technologies made in the movie Foundation
# Then I want to loop over the dictionary and find out how many each ruler created

 
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


with entry{
    technologies: dict[str,dict[str,str]] = {
        "jump drive": {"inventor": "empire", "purpose": "faster than light travel"},
        "prime radiant": {"inventor": "hari seldon", "purpose": "store phycohistoric equations"},
        "vault": {"inventor":"hari seldon", "purpose": "store foundation messages"},
        "cryo_pod": {"inventor":"empire", "purpose": "long term stasis during interstellar journeys"},
        "star_bridge": {"inventor":"empire", "purpose": "transit from the surface of the planet to underground buildings"},



    };
     technology_owners(technologies);
   
   
   
}
