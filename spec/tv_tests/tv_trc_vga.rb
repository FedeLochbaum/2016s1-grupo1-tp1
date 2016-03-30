require 'rspec'

describe 'Tv led con hdmi' do

  before :each do
    @tv = TV.new(50,120).extend(Led).extend(VGA)
  end

  it 'Una tv sabe responder a consumo' do

    expect(@tv.respond_to? 'consumo').to be true
  end

  it 'Una tv sabe responder a tasa de refresco' do

    expect(@tv.respond_to? 'tasa_refresco').to be true
  end

  it 'Una tv sabe responder a definicion maxima' do

    expect(@tv.respond_to? 'definicion_maxima').to be true
  end

  it 'Una tv sabe responder si es apta para videojuegos' do

    expect(@tv.respond_to? 'esParaVideoJuegos').to be true
  end

  it 'Una tv no debe ser apto para video juegos' do

    expect(@tv.isForVideoGames).to be true
  end

  it 'EL consumo debe ser 254.242640687 watts/h' do

    expect(@tv.consumption).to eq 254.242640687
  end

  it 'La tasa de refresco debe ser 90' do

    expect(@tv.refresh_rate).to eq 90
  end

  it 'La definicion maxima debe ser 4242,640687119' do

    expect(@tv.max_definition).to eq 4242, 640687119
  end
end