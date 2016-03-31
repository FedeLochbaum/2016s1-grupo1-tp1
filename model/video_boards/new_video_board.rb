require_relative '../../model/video_boards/gpu'
module NewVideoBoard
  include Gpu
  def consumption
    ppp * (1/ 100000) + super
  end

end