module SolidDisk
  attr_accessor :constant_consumption


  def consumption
    constant_consumption + super
  end

end