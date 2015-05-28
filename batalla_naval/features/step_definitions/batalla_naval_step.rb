require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/Exceptions.rb'
require_relative '../../app/models/BarcoYaExistenteException.rb'



Given(/^a board with dimension "(.*?)" x "(.*?)"$/) do |x, y|
    #@tablero = Tablero.new(x.to_i,y.to_i)
  visit '/mipagina'
  fill_in(:ancho, :with => x)
  fill_in(:alto, :with => y)
  click_button "crearTablero"
end


Then(/^position "(.*?)" is not empty$/) do |coord|
  #@tablero.posicionVacia(coord).should eq false
  fill_in(:coord, :with => coord)
  click_button "pregunta"
  page.should have_content('false')
end