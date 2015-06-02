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
  choose("radioChico")
  click_button "crearBarco"
end

#VERIFICO COORDENADA OCUPADA
Then(/^position "(.*?)" is not empty$/) do |coord|
  fill_in(:coord, :with => coord)
  click_button "pregunta"
  page.should have_content('false')
end


#COLOCO UN BARCO LARGO
Given(/^I create a large ship in position "(.*?)"$/) do |coords|
  fill_in(:coordenadas, :with => coords)
  fill_in(:nombreBarco, :with => "Delta")
  choose("radioLargo")
  click_button "crearBarco"
end



#COLOCO UN BARCO EN UNA COORDENADA INVALIDA
Given(/^coloco un barco en la posicion "(.*?)"$/) do |coord|
  fill_in(:coordenadas, :with => coord)
  fill_in(:nombreBarco, :with => "Charlie")
  choose("radioChico")
  click_button "crearBarco"
end

#VERIFICO ERROR DE COLOCACION DE UN BARCO FUERA DEL MAPA
Then(/^un error de "(.*?)" debe ser lanzada$/) do |excepcion|
  page.should have_content("No es posible colocar un barco fuera del mapa!!")
end