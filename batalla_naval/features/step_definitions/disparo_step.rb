require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'

#CREACION DE UN MAPA
Given(/^a board with dimension "(.*?)" x "(.*?)"$/) do |x, y|
  visit '/batallaNaval'
  fill_in(:ancho, :with => x)
  fill_in(:alto, :with => y)
  click_button "crearTablero"
end

#CREACION DE UN BARCO LARGO
Given(/^a large ship in position  "(.*?)"$/) do |coords|
  fill_in(:coordenadas, :with => coords)
  fill_in(:nombreBarco, :with => "Delta")
  choose("radioLargo")
  click_button "crearBarco"
end

#DISPARO A UNA COORDENADA INCORRECTA Y OBTENGO 'AGUA'
Given(/^I shoot to position "(.*?)"$/) do |coord|
  fill_in(:coordDisparo,:with => coord)
  click_button "disparo"
end

Then(/^I get "(.*?)"$/) do |water|
  page.should have_content(water)
end