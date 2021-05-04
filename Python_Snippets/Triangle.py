class Triangle:
   
    def __init__(self, hypotenuse=None, opposite=None, adjacent=None):
        self.hypotenuse = hypotenuse
        self.opposite = opposite
        self.adjacent = adjacent
        
        self.calculate_hypotenuse()
        self.calculate_opposite()
        self.calculate_adjacent()
        
    def calculate_hypotenuse(self):
        if self.hypotenuse == None:
            self.hypotenuse = math.sqrt(self.opposite**2 + self.adjacent**2)
            return self.hypotenuse
        else:
            return(self.hypotenuse)
        
    def calculate_opposite(self):
        if self.opposite == None:
            self.opposite = math.sqrt(self.hypotenuse**2 - self.adjacent**2)
            return self.opposite
        else:
            return(self.opposite)
        
    def calculate_adjacent(self):
        if self.adjacent == None:
            self.adjacent = math.sqrt(self.hypotenuse**2 - self.opposite**2)
            return self.adjacent
        else:
            return(self.adjacent)