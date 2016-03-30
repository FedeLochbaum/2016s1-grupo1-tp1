require_relative '../../model/video_boards/ineficient'
class IntegratedVideoBoard
  include Ineficient

  def isForVideoGames
    false
  end

end