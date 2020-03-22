require_relative "corona_virus/version"
require_relative "corona_virus/input"
require_relative "corona_virus/human"
require_relative "corona_virus/virus"

module CoronaVirus
  i = Input.new
  h = Human.new(i)

  # Virus.new
  # p Virus.x
end
