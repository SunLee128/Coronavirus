module CoronaVirus
  class Input
    def up(y)
      y = (y-1) % @input.grid_size
    end
    
    def down(y)
      y = (y+1) % @input.grid_size
    end
    
    def left(x)
      x = (x-1) % @input.grid_size
    end
    
    def right(x)
      x = (x+1) % @input.grid_size
    end
  end
end
