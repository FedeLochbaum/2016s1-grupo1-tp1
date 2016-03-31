require 'rspec'
require_relative '../../model/tecnologyBuilder/tecnology_builder'
require_relative '../../model/electronic_entries/hdmi'
require_relative '../../model/tecnologies/led'
require_relative '../../model/rigid_disks/solid_disk'
require_relative '../../model/video_boards/cooler'

describe 'Computer con monitor led_hdmi y placa integrada + disco solido + 2 cooler' do

  before :each do
    @monitor = Object.new.extend(TecnologyBuilder.monitor_con_ppp_y_size(50,120)).extend(LED).extend(HDMI)
    @computadora = @monitor.extend(Cooler).extend(Cooler).extend(TecnologyBuilder.integrated_video_board_with_consumption(15)).extend(SolidDisk)

  end

  it 'Una computadora sabe responder a consumo' do

    expect(@computadora.respond_to? 'consumption').to be true
  end

  it 'Una computadora sabe responder a esParaVideoJuegos' do

    expect(@monitor.respond_to? 'isForVideoGames').to be true
  end

  it 'EL consumo debe ser  watts/h' do

    expect(@computadora.consumption).to eq 15
  end

  it 'esParaVideoJuegos debe ser true' do

    expect(@computadora.isForVideoGames).to eq false
  end

end