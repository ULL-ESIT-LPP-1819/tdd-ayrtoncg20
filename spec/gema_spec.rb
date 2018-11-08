require 'spec_helper'

RSpec.describe PruebasNutricion do
	before :all do
		
		@cereales_chocolate = PruebasNutricion.new("Cereales de chocolate")


	end

	describe "expectativas" do

		it "Existe un nombre para la etiqueta" do
			expect(@cereales_chocolate.nombre_etiqueta).to eq("Cereales de chocolate");
		end
	end
end

