require_relative '../../app/models/Tablero.rb'
require_relative '../../app/models/Barco.rb'


Given(/^a board with dimension "(.*?)" x "(.*?)"$/) do |x, y|
  	@tablero = Tablero.new(x.to_i,y.to_i)
end

Given(/^a large ship in position  "(.*?)"$/) do |coords|
  @barco_largo = BarcoLargo.new("Alpha",2)
  @tablero.ponerBarcoEn(coords,@barco_largo)
end

Given(/^I shoot to position "(.*?)"$/) do |coord|
  @resultado = @tablero.dispararEn(coord)
end


Then(/^I get "(.*?)"$/) do |water|
  expect(@resultado).to eq water
end


Given(/^I shoot to position "(.*?)" and assert the hit$/) do |coord|
 	@resultado2 = @tablero.dispararEn(coord)
end


Then(/^I got "(.*?)"$/) do |hit|
  expect(@resultado2).to eq hit
end

Given(/^I shoot the positions "(.*?)" "(.*?)"$/) do |coord1, coord2|
  @tablero.dispararEn(coord1)
  @resultado = @tablero.dispararEn(coord2)
end



Then(/^this time I got "(.*?)"$/) do |sink|
  expect(@resultado).to eq sink
end
