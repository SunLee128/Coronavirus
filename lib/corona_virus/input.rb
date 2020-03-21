module CoronaVirus
  class Input

    attr_accessor :grid_size, :virus, :humans, :path, :vaccine

    def initialize(options={})
      inputs = File.readlines("input.txt")
      @grid_size = options[:grid_size] || inputs[0].chomp.to_i #4
      @virus = options[:virus] || inputs[1].scan(/\d+/).map(&:to_i)  #[x,y]
      @humans = options[:humans] || inputs[2].scan(/\d+/).map(&:to_i).each_slice(2).to_a
      @path = options[:path] || inputs[3].chomp.upcase.split("") #["U","D","L",..]
      @vaccine =  options[:vaccine] || inputs[4].scan(/\d+/).map(&:to_i) #[x,y]
    end
  end
end