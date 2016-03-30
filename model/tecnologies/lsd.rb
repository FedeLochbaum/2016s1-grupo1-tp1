require_relative '../../model/tecnologies/digitable'
module Lsd
  include Digitable

  def consumption
    4*size
  end

end