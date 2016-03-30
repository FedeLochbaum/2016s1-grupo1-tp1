require 'rspec'

describe 'Computer con monitor led_hdmi y placa integrada + disco rigido' do

  before :each do
    @monitor = TecnologyBuilder.monitor_con_ppp_y_size(50,120).extend(HDMI).extend(LED)
    @integrated_board=TecnologyBuilder.integrated_video_board_with_consumption(15)
    @computadora = Object.new.extend(Computer).extend(@monitor).extend(MagneticDisk).extend(@integrated_board)
  end

  it 'Una computadora sabe responder a consumo' do

    expect(@computadora.respond_to? 'consumo').to be true
  end

  it 'Una computadora sabe responder a esParaVideoJuegos' do

    expect(@monitor.respond_to? 'esParaVideoJuegos').to be true
  end

  it 'EL consumo debe ser  watts/h' do

    expect(@computadora.consumption).to eq 55
  end

  it 'esParaVideoJuegos debe ser true' do

    expect(@computadora.isForVideoGames).to eq false
  end

end