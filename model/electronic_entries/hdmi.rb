module HDMI

  def consumption
    super*1.2
  end

  def supported_rate
    (new Random().rand(1..2))*120
  end
end