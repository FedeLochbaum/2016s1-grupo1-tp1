require 'rspec'
require_relative '../../model/tecnologyBuilder/tecnology_builder'
require_relative '../../model/tecnologies/led'
require_relative '../../model/electronic_entries/av'

describe 'Tv led con hdmi' do

  before :each do
    @tv = Object.new.extend(TecnologyBuilder.tv_con_ppp_y_size(50,120)).extend(Led).extend(AV)
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

  it 'EL consumo debe ser 55 watts/h' do

    expect(@tv.consumption).to eq 55
  end

  it 'La tasa de refresco debe ser 50' do

    expect(@tv.refresh_rate).to eq 50
  end

  it 'La definicion maxima debe ser 480' do

    expect(@tv.max_definition).to eq 480
  end
end