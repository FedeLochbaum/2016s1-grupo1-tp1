require_relative '../../model/screens/tv'
module SmartTv
   include TV

  def default_refresh_rate
    1.5 * super
  end

end