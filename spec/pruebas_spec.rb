require 'spec_helper'

RSpec.describe Individuo do
        before :all do

		@individuo1 = Individuo.new(65.0, 1.60, 23.0, 1.0)

	end

	describe "expectativas" do

		it "Existe un peso para el individuo" do 
			expect(@individuo1.peso).to eq(65.0)
		end
	end
end
