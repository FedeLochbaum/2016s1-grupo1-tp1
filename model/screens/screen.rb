class Screen

  attr_accessor :size,:ppp

  def initialize(size,ppp)
    @size=size
    @ppp=ppp
  end


  def refresh_rate
    [default_refresh_rate, supported_rate].min
  end

  def isForVideoGames
    refresh_rate > 99
  end

end