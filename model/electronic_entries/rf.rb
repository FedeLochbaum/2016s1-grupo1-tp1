require_relative '../../model/tecnologies/analogic'
require_relative '../../model/electronic_entries/old'
module RF
  include Analogic
  include Old

  def consumption
    super
  end
end