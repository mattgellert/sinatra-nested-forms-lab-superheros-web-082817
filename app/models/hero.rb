class Hero
  attr_reader :name, :power, :bio

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
  end
  
end
