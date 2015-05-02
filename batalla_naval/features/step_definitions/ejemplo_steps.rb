Given(/^tengo un objeto loco$/) do
  @objeto_loco = ObjetoLoco.new
end

When(/^cuando grita$/) do
  @resultado = @objeto_loco.gritar
end

Then(/^dice "(.*?)"$/) do |grito|
  @resultado.should eq grito
end





















