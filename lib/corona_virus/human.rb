module CoronaVirus
  class Human
    attr_accessor :x, :y, :positions, :path
    attr_reader :i

    def initialize(input)
      # @i = Input.new
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
  end
end