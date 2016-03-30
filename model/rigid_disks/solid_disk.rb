class SolidDisk

  def initialize(constant_consumption)
    @constant_consumption=constant_consumption
  end

  def consumption
    @constant_consumption + super
  end

end