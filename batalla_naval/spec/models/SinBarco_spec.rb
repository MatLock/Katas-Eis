require_relative '../../app/models/Barco.rb'
require_relative '../../app/models/SinBarco.rb'



describe 'SinBarco'  do 
	
	before (:each) do
		@sinBarco = SinBarco.new()
	end

	it 'Al iniciar el juego' do
		expect(@sinBarco).to be #
	end

	it 'responde al toString' do
		expect(@sinBarco.to_s).to eq "water"
	end

end