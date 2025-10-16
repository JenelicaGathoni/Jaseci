#*
Task: Write a function categorize_by_inventor(technologies: dict) -> dict[str, list[str]] 
that returns a dictionary where the keys are the inventors and the values are a list of the technology names they invented.
*#


def categorize_by_inventor(technologies: dict) -> dict[str, list[str]]{
    technologies_list: dict[str, list[str]] = {};
    for (technology, properties) in technologies.items(){
      
        inventor: str = properties["inventor"];

        if inventor in technologies_list{
            technologies_list[inventor].append(technology);
        }else{
            technologies_list[inventor] = [technology];
        }

      
    }
 return technologies_list;
}

with entry{

    technologies: dict[str,dict[str,str]] = {
        "jump drive": {"inventor": "empire", "purpose": "faster than light travel"},
        "prime radiant": {"inventor": "hari seldon", "purpose": "store phycohistoric equations"},
        "vault": {"inventor":"hari seldon", "purpose": "store foundation messages"},
        "cryo_pod": {"inventor":"empire", "purpose": "long term stasis during interstellar journeys"},
        "star_bridge": {"inventor":"empire", "purpose": "transit from the surface of the planet to underground buildings"},
};
print(f"{categorize_by_inventor(technologies)}");
}