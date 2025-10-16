#nodes are like objects that hold the data
node Person{
    has name: str;
}
#edge defines the type of relationship btwn the two nodes
edge FriendsWith;

#create people
Alice = root ++> Person(name="Alice");
Jenelle = root ++> Person(name="Jenelle");

#creating relationships
Alice <+:FriendsWith:+> Jenelle;

for f in Alice(<- :FriendsWith: ->){
    std.out(f.name);
}
