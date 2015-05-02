require_relative '../spec_helper.rb'

describe ObjetoLoco do
	
	describe 'model' do 

		subject { @clase = ObjetoLoco.new }
		it { should respond_to :gritar }
		
	end

end