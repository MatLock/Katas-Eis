require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/Exceptions.rb'
require_relative '../../app/models/BarcoYaExistenteException.rb'


Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |x, y|
    #@tablero = Tablero.new(x.to_i,y.to_i)
  visit '/mipagina'
  fill_in(:ancho, :with => x)
  fill_in(:alto, :with => y)
  click_button "crearTablero"
end

Given(/^I create a small ship in position "(.*?)"$/) do |coord|
  #@tablero.ponerBarcoEn(coord,BarcoChico.new("Foxtrox"))
  fill_in(:coordenadas, :with => coord)
  fill_in(:nombreBarco, :with => "Foxtrox")
  fill_in(:tamanio, :with => "1")
  click_button "crearBarco"
end


Then(/^position "(.*?)" is not empty$/) do |coord|
  #@tablero.posicionVacia(coord).should eq false
  fill_in(:coord, :with => coord)
  click_button "pregunta"
  page.should have_content('false')
end


