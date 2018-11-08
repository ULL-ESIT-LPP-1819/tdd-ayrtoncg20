require 'spec_helper'

RSpec.describe PruebasNutricion do
	before :all do
		
		@cereales_chocolate = PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2)

	end

	describe "expectativas" do

		it "Existe un nombre para la etiqueta" do
			expect(@cereales_chocolate.nombre_etiqueta).to eq("Cereales de chocolate")
		end


		it "Existe una cantidad de grasas para el alimento" do
			expect(@cereales_chocolate.grasas).to eq(0.8)
		end

		it "Existe una cantidad de grasas saturadas para el alimento" do
			expect(@cereales_chocolate.grasas_saturadas).to eq(0.2)
		end
	end
end

