require_relative '../../model/screens/monitor_model'
require_relative '../../model/screens/tv'
require_relative '../video_boards/integrated_video_board'
class TecnologyBuilder

  def self.monitor_con_ppp_with_size(ppp,size)
    AnonymousMonitor
    includes MonitorModel
    def ppp
      ppp
    end
    def size
      size
    end
  end

  def self.tv_con_ppp_with_size(ppp,size)
    AnonymousMonitor
    includes TV
    def ppp
      ppp
    end
    def size
      size
    end
  end

  def self.integrated_video_board_with_consumption(consumption)
    AnonymousVideoBoard
    includes IntegratedVideoBoard
    def fixed_consumption
      consumption
    end
  end
end