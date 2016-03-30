require_relative '../../model/electronic_entries/old'
require_relative '../../model/tecnologies/analogic'
module AV
  include Analogic
  include Old

  def consumption
    super*1.1
  end
end