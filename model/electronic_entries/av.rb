module AV
  include Analogic
  include Old

  def consumption
    super*1.1
  end
end