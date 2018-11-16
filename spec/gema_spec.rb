require 'spec_helper'

RSpec.describe PruebasNutricion do
	before :all do
		
		@cereales_chocolate = PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)

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

		it "Existe una cantidad de hidratos de carbono" do
			expect(@cereales_chocolate.hidratos_carbono).to eq(82.0)
		end

		it "Existe una cantidad de azúcares para el alimento" do
			expect(@cereales_chocolate.azucares).to eq(7.0)
		end

		it "Existe una cantidad de proteínas en el alimento" do
			expect(@cereales_chocolate.proteinas).to eq(8.0)
		end

		
		it "Existe una cantidad de sal en el alimento" do
			expect(@cereales_chocolate.sal).to eq(1.6)
		end

		it "Eixste una cantidad de Kilojulios para el alimento" do
			expect(@cereales_chocolate.kilojulios).to eq((0.8*37)+(82.0*17)+(8.0*17)+(1.6*25))
		end

		it "Existe una cantidad de kilocalorias para el alimento" do
			expect(@cereales_chocolate.kilocalorias).to eq((0.8*9)+(82.0*4)+(8.0*4)+(1.6*6))
		end

		it "Existe una cantidad en porcentaje de lo que equivale el alimento en la ingesta recomendada de la grasa" do #El porcentaje de grasas está por debajo de la IR"
			expect(@cereales_chocolate.ingesta_recomendada).to eq((0.8*100)/70)
		end

		it "Existe una cantidad de porcentaje de lo que equivale el alimento en la ingesta recomendada para las proteinas" do #El porcentaje de proteinas está por debajo de la IR"
			expect(@cereales_chocolate.ingesta_recomendada_proteinas).to eq((8.0*100)/50)
		end

		it "Existe una etiqueta formateada" do
			expect(@cereales_chocolate.to_s).to eq("[#{@cereales_chocolate.nombre_etiqueta}, Grasas=#{@cereales_chocolate.grasas}, GrasasSaturadas=#{@cereales_chocolate.grasas_saturadas}, HidratosCarbono=#{@cereales_chocolate.hidratos_carbono}, Azucares=#{@cereales_chocolate.azucares}, Proteinas=#{@cereales_chocolate.proteinas}, Sal=#{@cereales_chocolate.sal}]:")
		end 
	end

	describe Lista do 
		before :all do
			@lsita = Lista.new()
		end
	end
end

