module VGA

  def consumption
    0.001*max_definition + super
  end

  def supported_rate
    120
  end
end