require 'rspec'

describe 'Monitor led con hdmi' do

  before :each do
    @monitor = Monitor.new(50,120).extend(Led).extend(RF)
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

  it 'EL consumo debe ser 250 watts/h' do

    expect(@monitor.consumption).to eq 250
  end

  it 'La tasa de refresco debe ser 50' do

    expect(@monitor.refresh_rate).to eq 50
  end

  it 'La definicion maxima debe ser 480' do

    expect(@monitor.max_definition).to eq 480
  end
end