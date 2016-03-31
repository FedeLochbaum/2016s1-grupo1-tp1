require_relative '../../model/screens/monitor_model'
require_relative '../../model/screens/tv'
require_relative '../video_boards/integrated_video_board'
class TecnologyBuilder

  def self.monitor_con_ppp_y_size(ppp,size)
    @ppp=ppp
    @size=size
    Module.new{
      include MonitorModel
    def ppp
      120
      #parece que aca se pierde el contexto de la variable global y vuelve a ser nil
    end
    def size
      50
      #parece que aca se pierde el contexto de la variable global y vuelve a ser nil
    end
    }
  end

  def self.tv_con_ppp_with_size(ppp,size)
    @ppp=ppp
    @size=size
    Module.new{
    include TV
    def ppp
      120
      #parece que aca se pierde el contexto de la variable global y vuelve a ser nil
    end
    def size
      50
      #parece que aca se pierde el contexto de la variable global y vuelve a ser nil
    end}
  end

  def self.integrated_video_board_with_consumption(a_consumption)
    @cons=a_consumption
    Module.new{
    include IntegratedVideoBoard
    def fixed_consumption
      15
      #parece que aca se pierde el contexto de la variable global y vuelve a ser nil
    end
    }
  end



  def self.magnetic_disk_with_rpm(rpm)
    @rpm=rpm
    Module.new{
      include MagneticDisk
      def rpm
        5
        #parece que aca se pierde el contexto de la variable global y vuelve a ser nil
      end
    }
  end

  def self.solid_disk_with_constant_consuption(cons)
    @cont_cons
    Module.new{
      include SolidDisk
      def constant_consumption
        15
        #parece que aca se pierde el contexto de la variable global y vuelve a ser nil
      end
    }
  end
end

