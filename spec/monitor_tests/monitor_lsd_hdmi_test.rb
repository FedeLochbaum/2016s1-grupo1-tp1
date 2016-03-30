require 'rspec'

describe 'Monitor led con hdmi' do

  before :each do
    @monitor = Monitor.new(50,120).extend(Led).extend(HDMI)
  end

  it 'Un Monitor sabe responder a consumo' do

    expect(@monitor.respond_to? 'consumo').to be true
  end

  it 'Un Monitor sabe responder a tasa de refresco' do

    expect(@monitor.respond_to? 'tasa_refresco').to be true
  end

  it 'Un Monitor sabe responder a definicion maxima' do

    expect(@monitor.respond_to? 'definicion_maxima').to be true
  end

  it 'Un Monitor sabe responder si es apto para videojuegos' do

    expect(@monitor.respond_to? 'esParaVideoJuegos').to be true
  end

  it 'EL monitor no debe ser apto para video juegos' do

    expect(@monitor.isForVideoGames).to be true
  end

  it 'EL consumo debe ser 210 watts/h' do

    expect(@monitor.consumption).to eq 210
  end

  it 'La tasa de refresco debe ser 90' do

    expect(@monitor.refresh_rate).to eq 90
  end

  it 'La definicion maxima debe ser 4242.640687119' do

    expect(@monitor.max_definition).to eq 4242.640687119
  end
end