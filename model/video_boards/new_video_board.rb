module NewVideoBoard
  include Gpu

  def consumption
    ppp * (1/ 100000) + super
  end

end