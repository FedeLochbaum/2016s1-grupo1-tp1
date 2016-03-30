module MagneticDisk
   attr_accessor :rpm

  def consumption
    (rpm * (60/10000)) + super
  end

end