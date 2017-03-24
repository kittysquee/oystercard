require_relative 'zone'
require_relative 'journey'

class Station

  include Zone

  attr_reader :name, :zone

  def initialize(name)
    @name = name
    @zone = Zone.zones(name)
  end



end
