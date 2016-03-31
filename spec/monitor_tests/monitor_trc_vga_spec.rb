require 'rspec'
require_relative '../../model/tecnologyBuilder/tecnology_builder'
require_relative '../../model/tecnologies/trc'
require_relative '../../model/electronic_entries/vga'

describe 'MonitorModel led con hdmi' do

  before :each do
    @monitor = Object.new.extend(TecnologyBuilder.monitor_con_ppp_y_size(50,120)).extend(TRC).extend(VGA)
  end

  it 'Un MonitorModel sabe responder a consumo' do

    expect(@monitor.respond_to? 'consumption').to be true
  end

  it 'Un MonitorModel sabe responder a tasa de refresco' do

    expect(@monitor.respond_to? 'refresh_rate').to be true
  end

  it 'Un MonitorModel sabe responder a definicion maxima' do

    expect(@monitor.respond_to? 'max_definition').to be true
  end

  it 'Un MonitorModel sabe responder si es apto para videojuegos' do

    expect(@monitor.respond_to? 'isForVideoGames').to be true
  end

  it 'EL monitor no debe ser apto para video juegos' do

    expect(@monitor.isForVideoGames).to be true
  end

  it 'EL consumo debe ser 55 watts/h' do

    expect(@monitor.consumption).to eq 250.48
  end

  it 'La tasa de refresco debe ser 50' do

    expect(@monitor.refresh_rate).to eq 120
  end

  it 'La definicion maxima debe ser 480' do

    expect(@monitor.max_definition).to eq 480
  end
end