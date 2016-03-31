module Screen

  attr_accessor :size,:ppp


  def refresh_rate
    [default_refresh_rate, supported_rate].min
  end

  def isForVideoGames
    refresh_rate > 99
  end

  def consumption
    if defined?(super)
      super
    else
      0
    end
  end

end