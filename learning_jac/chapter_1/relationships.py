class person:
    def __init__(self, name):
        self.name = name
        self.friends = []

    def add_friend(self, friend):
        self.friends.append(friend)
        friend.friends.append(self)

""" 
 #create people
Calijen = person("Calijen")
Nyota = person("Nyota")
Eneli = person("Eneli")

#create relationships
Calijen.add_friend(Nyota)
Nyota.add_friend(Calijen) # In python you have to do this twice

print([f.name for f in Calijen.friends])
print([f.name for f in Nyota.friends])

"""
#
Calijen = person("Calijen")
Nyota = person("Nyota")

Calijen.add_friend(Nyota)

print([f.name for f in Calijen.friends])  
print([f.name for f in Nyota.friends])    
