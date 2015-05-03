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
