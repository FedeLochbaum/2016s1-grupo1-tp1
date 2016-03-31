module Ineficient

  def consumption
    if defined? (fixed_consumption)
      fixed_consumption + super
    else
    super

    end
  end

end