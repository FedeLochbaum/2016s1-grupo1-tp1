module Ineficient

  def initialize(fixed_consumption)
    @fixed_consumption= fixed_consumption
  end

  def consumption
    @fixed_consumption+super
  end
end