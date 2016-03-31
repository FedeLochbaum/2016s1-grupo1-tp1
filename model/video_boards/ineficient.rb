module Ineficient

  def consumption
    fixed_consumption + super
  end
end