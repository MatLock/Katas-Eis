require_relative '../../app/models/Tablero.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |x, y|
  	@tablero = Tablero.new(x.to_i,y.to_i)
end

Given(/^I create a small ship in position "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^position "(.*?)" is not empty$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
