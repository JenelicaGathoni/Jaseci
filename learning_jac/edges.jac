#Question- how come I can't show that Uganda has 2 enemies/rivals?
node country{
    has name: str;
    has wealth: int;
}
edge country_relation{
    has relationship_type: str;

}

#Lets create countries
with entry{
    country1 = root ++> country(name = "kenya", wealth = 45);
    country2 = root ++> country(name = "ethiopia", wealth = 30);
    country3 = root ++> country(name = "uganda", wealth = 20);

    #lets map their relationships to each other:

    country1 +>:country_relation(relationship_type="allies"):+> country2;
    country1 +>: country_relation(relationship_type="rivals"):+> country3;
    country3 +>: country_relation(relationship_type = "rivals"):+> country2;

    #let's try asking questions about those relationships
    accomplices = [country1[0]->: country_relation:relationship_type =="allies":->(`?country)];
    enemies = [country3[0]<-: country_relation:relationship_type =="rivals":<-(`?country)];

    print(f"{country1[0].name} has {len(accomplices)} allies");
    print(f"{country3[0].name} has {len(enemies)} aduis");
    }




