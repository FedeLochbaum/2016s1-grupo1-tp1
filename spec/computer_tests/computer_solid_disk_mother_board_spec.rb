require 'rspec'
require_relative '../../model/tecnologyBuilder/tecnology_builder'
require_relative '../../model/electronic_entries/hdmi'
require_relative '../../model/tecnologies/led'
require_relative '../../model/rigid_disks/solid_disk'

describe 'Computer con monitor led_hdmi y placa integrada + disco solido' do

  before :each do
    @monitor = LED.extend(TecnologyBuilder.monitor_con_ppp_y_size(50,120)).extend(HDMI)
    @integrated_board=TecnologyBuilder.integrated_video_board_with_consumption(15)
    @computadora = Object.new.extend(@integrated_board).extend(TecnologyBuilder.solid_disk_with_constant_consuption(15)).extend(@monitor)

  end

  it 'Una computadora sabe responder a consumo' do

    expect(@computadora.respond_to? 'consumption').to be true
  end

  it 'Una computadora sabe responder a esParaVideoJuegos' do

    expect(@monitor.respond_to? 'isForVideoGames').to be true
  end

  it 'EL consumo debe ser  watts/h' do

    expect(@computadora.consumption).to eq 55
  end

  it 'esParaVideoJuegos debe ser true' do

    expect(@computadora.isForVideoGames).to eq false
  end

end