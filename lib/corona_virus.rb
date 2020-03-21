require_relative "corona_virus/version"
require_relative "corona_virus/input"
require_relative "corona_virus/virus"

module CoronaVirus
  Input.new
  p Virus.new
  # p Virus.x
end
