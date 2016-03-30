require_relative '../../model/screens/screen'
module MonitorModel
  include Screen

  def default_refresh_rate
    120
  end

end