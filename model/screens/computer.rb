class Computer

  def initialize(screen)
    @screen=screen
  end

  def consumo
    @screen.consumption + super
  end
end