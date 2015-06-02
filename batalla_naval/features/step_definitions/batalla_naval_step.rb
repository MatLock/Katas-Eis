require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/Exceptions.rb'
require_relative '../../app/models/BarcoYaExistenteException.rb'

# CREO UN TABLERO
Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |x, y|
  visit '/batallaNaval'
  fill_in(:ancho, :with => x)
  fill_in(:alto, :with => y)
  click_button "crearTablero"
end

#COLOCO UN BARCO CHICO
Given(/^I create a small ship in position "(.*?)"$/) do |coord|
  fill_in(:coordenadas, :with => coord)
  fill_in(:nombreBarco, :with => "Foxtrox")
  click_button "crearBarco"
end

#VERIFICO COORDENADA OCUPADA
Then(/^position "(.*?)" is not empty$/) do |coord|
  fill_in(:coord, :with => coord)
  click_button "pregunta"
  page.should have_content('false')
end