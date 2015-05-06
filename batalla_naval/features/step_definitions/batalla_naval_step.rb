require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |x, y|
  	@tablero = Tablero.new(x.to_i,y.to_i)
end

Given(/^I create a small ship in position "(.*?)"$/) do |coord|
  @tablero.ponerBarcoEn(coord,BarcoChico.new("Foxtrox"))
end

Then(/^position "(.*?)" is not empty$/) do |coord|
  @tablero.posicionVacia(coord).should eq false
end

Then(/^position "(.*?)" is empty$/) do |coord|
  @tablero.posicionVacia(coord).should be true
end


Given(/^I create a large ship in position "(.*?)"$/) do |coords|
  @tablero.ponerBarcoEn(coords,BarcoLargo.new("Delta",2))
end

