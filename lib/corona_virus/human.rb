module CoronaVirus
  class Human
    attr_accessor :x, :y, :positions, :path
    attr_reader :i
    def initialize(options = {})
      @i = Input.new
      @x = options[:x] || @i.virus[0]
      @y = options[:y] || @i.virus[1]
      @path = options[:path] ||@i.path
    end

    def up
      @y = (@y-1) % @i.grid_size
    end

    def down
      @y = (@y+1) % @i.grid_size
    end

    def left
      @x = (@x-1) % @i.grid_size
    end

    def right
      @x = (@x+1) % @i.grid_size
    end

    def move
      @positions = []
      @path.each do |move|
        case move
        when "U"
          up
        when "D"
          down
        when "L"
          left
        when "R"
          right
        end
        @positions << [@x, @y]
      end
    end

  end
end