require_relative '../../model/screens/monitor_model'
require_relative '../../model/screens/tv'
require_relative '../video_boards/integrated_video_board'
class TecnologyBuilder

  def self.monitor_con_ppp_y_size(ppp,size)
    Module.new{
      include MonitorModel
    def ppp
      ppp
    end
    def size
      size
    end
    }
  end

  def self.tv_con_ppp_with_size(ppp,size)
    @ppp=ppp
    @size=size
    Module.new{
    includes TV
    def ppp
      @ppp
    end
    def size
      @size
    end}
  end

  def self.integrated_video_board_with_consumption(a_consumption)
    @cons=a_consumption
    Module.new{
    include IntegratedVideoBoard
    def fixed_consumption
       @cons
    end
    }
  end

  def self.magnetic_disk_with_rpm(rpm)
    @rpm=rpm
    Module.new{
      include MagneticDisk
      def rpm
        @rpm
      end
    }
  end
end