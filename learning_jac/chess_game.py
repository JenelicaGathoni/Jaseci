class player:
    def __init__(self, name, color):
        self.name = name
        self.color = color
    def introduce(self):
        print(f"Hi I am {self.name} and I play {self.color}")

p1 = player("Alice", "white")
p2 = player("Jenelle", "black")

p1.introduce()
p2.introduce()