require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'


Given(/^a board with dimension "(.*?)" x "(.*?)"$/) do |x, y|
  	@tablero = Tablero.new(x.to_i,y.to_i)
end

Given(/^a large ship in position  "(.*?)"$/) do |coords|
  @barco_largo = BarcoLargo.new("Alpha")
  @tablero.ponerBarcoEn(coords,@barco_largo)
end

Given(/^I shoot to position "(.*?)"$/) do |coord|
  @resultado = @tablero.dispararEn(coord)
end


Then(/^I get "(.*?)"$/) do |arg1|
  
end



