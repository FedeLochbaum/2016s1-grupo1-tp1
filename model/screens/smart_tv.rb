module SmartTv
   include Tv

  def default_refresh_rate
    super * 1.5
  end

end