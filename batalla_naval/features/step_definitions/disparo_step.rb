require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'


Given(/^a board with dimension "(.*?)" x "(.*?)"$/) do |x, y|
  	#@tablero = Tablero.new(x.to_i,y.to_i)
  visit '/mipagina'
  fill_in(:ancho, :with => x)
  fill_in(:alto, :with => y)
  click_button "crearTablero"
end

Given(/^a large ship in position  "(.*?)"$/) do |coords|
  #@barco_largo = BarcoLargo.new("Alpha",2)
  #@tablero.ponerBarcoEn(coords,@barco_largo)
  fill_in(:coordenadas, :with => coords)
  fill_in(:nombreBarco, :with => "Delta")
  fill_in(:tamanio, :with => "2")
  click_button "crearBarco"
end

Given(/^I shoot to position "(.*?)"$/) do |coord|
  #@resultado = @tablero.dispararEn(coord)
  fill_in(:coordDisparo,:with => coord)
  click_button "disparo"
end


Then(/^I get "(.*?)"$/) do |water|
  #expect(@resultado).to eq water
  page.should have_content(water)
end