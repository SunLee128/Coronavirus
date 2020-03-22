module CoronaVirus
  class Virus
    attr_accessor :x, :y, :positions, :path

    def initialize(input, human, results)
      @x = input.virus[0]
      @y = input.virus[1]
      @path = input.path
    end

    def up(input)
      @y = (@y-1) % input.grid_size
    end

    def down(input)
      @y = (@y+1) % input.grid_size
    end

    def left(input)
      @x = (@x-1) % input.grid_size
    end

    def right(input)
      @x = (@x+1) % input.grid_size
    end

    def move(input)
      @positions = []
      input.path.each do |move|
        case move
        when "U"
          up(input)
        when "D"
          down(input)
        when "L"
          left(input)
        when "R"
          right(input)
        end
        @positions << [@x, @y]
      end
    end

    def check_humans(human)
      @find_humans = human.humans & @positions
      spread if @find_humans.length > 0
    end

    def spread(human)
      @find_humans.each do |h|
        human.kill_creature(c)
        Zombie.new(:x=>c[0], :y=>c[1])
        @@score += 1
      end
    end
  
  end
end