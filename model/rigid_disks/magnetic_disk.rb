class MagneticDisk

  def initialize(rpm)
    @rpm=rpm
  end

  def consumption
    (rpm * (60/10000)) + super
  end

end