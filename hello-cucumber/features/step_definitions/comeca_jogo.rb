Quando("começo um novo jogo") do
  @game = Game.new
  @game.start
end

Então("vejo a seguinte mensagem na tela:") do |string|
  expect(@game.output).to include(string)
end

class Game
  attr_reader :output
  
  def initialize
    @output = []
  end

  def start
    @output << "Bem vindo ao jogo da forca!"
  end
end