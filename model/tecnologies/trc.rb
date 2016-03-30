require_relative '../../model/tecnologies/analogic'
module TRC
  include Analogic

  def consumption
       5*size
  end

end