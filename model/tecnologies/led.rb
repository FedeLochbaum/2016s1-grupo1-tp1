require_relative '../../model/tecnologies/digitable'
module LED
  include Digitable

  def consumption
    1*size
  end

end