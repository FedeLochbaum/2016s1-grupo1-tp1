module MagneticDisk
  attr_accessor :rpm

  def consumption
    (60/10000)* rpm
  end



end