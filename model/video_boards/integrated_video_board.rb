require_relative '../../model/video_boards/ineficient'
module IntegratedVideoBoard
  include Ineficient

  def isForVideoGames
    false
  end

end