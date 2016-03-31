require 'rspec'
require_relative '../../model/tecnologyBuilder/tecnology_builder'
require_relative '../../model/tecnologies/led'
require_relative '../../model/electronic_entries/av'

describe 'Tv led con hdmi' do

  before :each do
    @tv = Object.new.extend(TecnologyBuilder.tv_con_ppp_with_size(50,120)).extend(LED).extend(AV)
  end

  it 'Una tv sabe responder a consumo' do

    expect(@tv.respond_to? 'consumption').to be true
  end

  it 'Una tv sabe responder a tasa de refresco' do

    expect(@tv.respond_to? 'refresh_rate').to be true
  end

  it 'Una tv sabe responder a definicion maxima' do

    expect(@tv.respond_to? 'max_definition').to be true
  end

  it 'Una tv sabe responder si es apta para videojuegos' do

    expect(@tv.respond_to? 'isForVideoGames').to be true
  end

  it 'Una tv no debe ser apto para video juegos' do

    expect(@tv.isForVideoGames).to be false
  end

  it 'EL consumo debe ser 55 watts/h' do

    expect(@tv.consumption).to eq 55.00000000000001
  end

  it 'La tasa de refresco debe ser 50' do

    expect(@tv.refresh_rate).to eq 50
  end

  it 'La definicion maxima debe ser 480' do

    expect(@tv.max_definition).to eq 480
  end
end