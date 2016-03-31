require 'rspec'
require_relative '../../model/tecnologyBuilder/tecnology_builder'
require_relative '../../model/electronic_entries/hdmi'
require_relative '../../model/tecnologies/led'
require_relative '../../model/rigid_disks/solid_disk'
require_relative '../../model/video_boards/new_video_board'

describe 'Computer con monitor led_hdmi y placa nueva + disco solido' do

  before :each do
    @monitor = Object.new.extend(TecnologyBuilder.monitor_con_ppp_y_size(50,120)).extend(LED).extend(HDMI)
    @computadora = @monitor.extend(NewVideoBoard).extend(TecnologyBuilder.solid_disk_with_constant_consuption(10))
  end

  it 'Una computadora sabe responder a consumo' do

    expect(@computadora.respond_to? 'consumption').to be true
  end

  it 'Una computadora sabe responder a esParaVideoJuegos' do

    expect(@monitor.respond_to? 'isForVideoGames').to be true
  end

  it 'EL consumo debe ser  watts/h' do

    expect(@computadora.consumption).to eq 75
  end

  it 'esParaVideoJuegos debe ser true' do

    expect(@computadora.isForVideoGames).to eq true
  end

end