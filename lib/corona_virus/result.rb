module CoronaVirus
  class Result
    attr_accessor :coronavirus_count
    def initialize
      @coronavirus_count = 0
    end

    def count_add
      @coronavirus_count += 1
    end

    def count_minus
      @coronavirus_count -= 1 if @coronavirus_count > 0
    end

    def to_s
      "Coronavirus Count: #{@coronavirus_count}"
    end
  end
end