require 'spec_helper'

RSpec.describe PruebasNutricion::PruebasNutricion do
	before :all do
		
		@cereales_chocolate = PruebasNutricion::PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)
		@cereales_chocolate = PruebasNutricion::PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)
                @cereales_miel = PruebasNutricion::PruebasNutricion.new("Cereales de miel", 0.8, 0.1, 69.0, 5.0, 6.0, 1.2)
                @donettes = PruebasNutricion::PruebasNutricion.new("Donettes", 1.0, 0.5, 89.0, 9.0, 9.0, 1.9)
                @galletas = PruebasNutricion::PruebasNutricion.new("Galletas", 0.8, 0.1, 34.0, 2.0, 3.0, 3.6)
                @leche = PruebasNutricion::PruebasNutricion.new("Leche", 0.8, 0.1, 10.0, 2.0, 1.0, 1.0)
                @tomate = PruebasNutricion::PruebasNutricion.new("Tomate", 0.4, 0.5, 42.0, 3.0, 4.0, 0.5)
                @mermelada = PruebasNutricion::PruebasNutricion.new("Mermelada", 0.8, 0.6, 23.0, 15.0, 8.0, 1.4)

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
			@lista = Lista.new()
		        @cereales_chocolate = PruebasNutricion::PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)
			@cereales_miel = PruebasNutricion::PruebasNutricion.new("Cereales de miel", 0.8, 0.1, 69.0, 5.0, 6.0, 1.2)
			@donettes = PruebasNutricion::PruebasNutricion.new("Donettes", 1.0, 0.5, 89.0, 9.0, 9.0, 1.9)
			@galletas = PruebasNutricion::PruebasNutricion.new("Galletas", 0.8, 0.1, 34.0, 2.0, 3.0, 3.6)
			@leche = PruebasNutricion::PruebasNutricion.new("Leche", 0.8, 0.1, 10.0, 2.0, 1.0, 1.0)
			@tomate = PruebasNutricion::PruebasNutricion.new("Tomate", 0.4, 0.5, 42.0, 3.0, 4.0, 0.5)
			@mermelada = PruebasNutricion::PruebasNutricion.new("Mermelada", 0.8, 0.6, 23.0, 15.0, 8.0, 1.4)
		end

		describe "Listas" do
		
			it "Existe una lista vacía con head y tail nulos" do
				expect(@lista.empty).to eq(true)
				expect(@lista.head.value).to eq(nil)
				expect(@lista.tail.value).to eq(nil)
				expect(@lista.size).to eq(0)
			end

			it "Existe un nodo inicio donde next y prev estén vacíos" do
				expect(@lista.head.next).to eq(nil)
				expect(@lista.tail.prev).to eq(nil)
			end
			
			it "Existe un método para insertar elementos en la lista" do
				expect(@lista.insertar_nodo(@cereales_chocolate)).to eq(@cereales_chocolate)
				expect(@lista.insertar_nodo(@cereales_miel)).to eq(@cereales_miel)
				expect(@lista.insertar_nodo(@donettes)).to eq(@donettes)
				expect(@lista.insertar_nodo(@galletas)).to eq(@galletas)
				expect(@lista.insertar_nodo(@leche)).to eq(@leche)
				expect(@lista.insertar_nodo(@tomate)).to eq(@tomate)
				expect(@lista.insertar_nodo(@mermelada)).to eq(@mermelada)
 			end

			it "Existe una lista que ya no está vacía" do
				expect(@lista.empty).to eq(false)
			end

			it "Existe un head que es el primero elemento insertado" do
				expect(@lista.head.value).to eq(@cereales_chocolate)
			end

			it "Existe un tail que es el último elemento insertado" do
				expect(@lista.tail.value).to eq(@mermelada)
			end

			it "Existe un método para extraer el primer elemento de la lista" do
				expect(@lista.extraer_nodo_head()).to eq(@cereales_chocolate)
			end
			
			it "Existe un método para comprobar que se puede acceder a la sal del nodo" do
				expect(@lista.extraer_nodo_head.sal).to eq(@cereales_miel.sal)
			end

			it "Existe un método para ver el valor de la sal de todos los alimentos extraídos" do
				expect(@lista.extraer_nodo_head.sal).to be <= 6
				expect(@lista.extraer_nodo_head.sal).to be <= 6
				expect(@lista.extraer_nodo_head.sal).to be <= 6
				expect(@lista.extraer_nodo_head.sal).to be <= 6
				expect(@lista.extraer_nodo_head.sal).to be <= 6				
			end
		end
		
	end


	describe Comparable do
		before :all do
			@cereales_de_chocolate = PruebasNutricion::PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)
		end

                describe "Pruebas para comprobar que dos alimentos son iguales" do
                	it "Alimentos con el mismo nombre" do
				expect(@cereales_chocolate.sal==@cereales_de_chocolate.sal).to eq(true)
			end
			it "Comparacion de nutrientres entre los alimentos" do
				expect(@cereales_chocolate.sal==@cereales_miel.sal).to eq(false)
				expect(@cereales_chocolate.proteinas>@cereales_miel.proteinas).to eq(true)
				expect(@cereales_chocolate.azucares<@donettes.azucares).to eq(true)
			end
              	end
	end	
end

