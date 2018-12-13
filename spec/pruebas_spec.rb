
require 'spec_helper'

RSpec.describe Individuo::Individuo do
	before :each do	

		@ayrton = Individuo::Individuo.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1, 23)
	end

	describe "expectativas" do
		
		it "Existe un individuo formateado" do
			expect(@ayrton.to_s).to eq("[Numero De Historia=#{@ayrton.numero_historia}, Nombre=#{@ayrton.nombre}, Apellido=#{@ayrton.apellido}, Fecha De Nacimiento=#{@ayrton.fecha_nacimiento}, Ocupacion=#{@ayrton.ocupacion}, Fumador=#{@ayrton.fumador}, Sexo=#{@ayrton.sexo}, Edad=#{@ayrton.edad}]:")
		end	

	 	it "Existe un método para comprobar el tipo de objeto" do
      			expect(@ayrton.instance_of? Individuo::Individuo).to eq(true)
			expect(@ayrton.instance_of? Object).not_to eq(true)
			expect(@ayrton.instance_of? BasicObject).not_to eq(true)
			expect(@ayrton).to respond_to(:numero_historia, :nombre, :apellido, :fecha_nacimiento, :ocupacion, :fumador, :sexo, :edad)
			expect(@ayrton).to respond_to('to_s') 
    		end

   		it "Existe un método para comprobar la clase de un objeto" do
      			expect(@ayrton.class).to eq(Individuo::Individuo)
      			expect(@ayrton.is_a? Individuo::Individuo).to eq(true)
    		end
	   	
		it "Existe un método para comprobar la jerarquía de un objeto" do
      			expect(@ayrton.kind_of? Individuo::Individuo).to eq(true)
      			expect(@ayrton.kind_of? BasicObject).to eq(true)
      			expect(@ayrton.kind_of? Object).to eq(true)
    		end
	end 
	describe Individuo::Paciente do               
		before :each do
			@ayrton = Individuo::Paciente.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1, 23, 83.0, 1.78, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,20.8], 0.54)
			@eduardo = Individuo::Paciente.new(2, "Eduardo", "Escobar", "13-02-1995", "Estudiante", "No", 1, 23, 85.0, 1.73, [94,95], [100,102], [2.1,2.3,2.1], [1.8,1.9,1.0], [4.1,4.2,4.3], [6.4,5.5,6.6], [24.9,25.1], 0.27)
            @saray = Individuo::Paciente.new(3, "Saray", "Garcia", "01-02-2008", "Estudiante", "No", 0, 10, 69.0, 1.47, [68,69], [89,90], [2.5,8.6,8.7], [2.8,8.9,8.0], [8.1,3.2,3.3], [8.4,3.5,3.6], [13.5,14.1], 0.54)
            @joseLuis = Individuo::Paciente.new(4, "Jose Luis", "Crespo", "27-03-1961", "Parado", "No", 1, 55, 105.0, 1.68, [88,89], [86,87], [9.5,2.6,9.7], [2.9,9.9,3.0], [9.1,3.2,9.3], [6.4,9.5,3.6], [27.5,27.8], 0.12)
            @rosy = Individuo::Paciente.new(5, "Rosa", "Garcia", "01-05-1962", "Parada", "No", 0, 54, 130.0, 1.67, [50,51], [72,73], [7.5,2.6,2.7], [7.8,2.9,3.0], [7.1,3.2,7.3], [3.4,7.5,7.6], [18.9,19.1], 0)
		end
	

		describe "expectativas" do

			it "Existe un bicipital para el individuo" do
       		       		 expect(@ayrton.bicipital).to eq((2.5+2.6+2.7)/3)
		 	end
		
			it "Existe un tricipital para el individuo" do
				expect(@ayrton.tricipital).to eq((2.8+2.9+3.0)/3)
			end

			it "Existe un subescapular para el individuo" do
				expect(@ayrton.subescapular).to eq((3.1+3.2+3.3)/3)
			end
			
			it "Existe un suprailiaco para el individuo" do
				expect(@ayrton.suprailiaco).to eq((3.4+3.5+3.6)/3)
			end

			it "Existe un IMC para el individuo" do
				expect(@ayrton.imc).to eq(83.0/(1.78*1.78))
			end

			it "Existe una cadera para el individuo" do
				expect(@ayrton.cadera).to eq((80+87)/2)
			end
			
			it "Existe una cintura para el individuo" do
				expect(@ayrton.cintura).to eq((60+65)/2)
			end
		
			it "Existe un RCC" do
				expect(@ayrton.RCC).to eq(((60+65)/2)/((80+87)/2))
			end

			it "Existe un % de masa corporal" do
				expect(@ayrton.porcentajegrasa).to eq(1.2 * @ayrton.imc + 0.23 * 23 - 10.8 * 1 - 5.4)
			end
	
			it "Existe un brazo para el individuo" do
				expect(@ayrton.brazo).to eq((20.0+20.8)/2)
			end

			it "Existe un paciente formateado" do
                        	expect(@ayrton.to_s).to eq("[Peso=#{@ayrton.peso}, Talla=#{@ayrton.talla}, Cintura=#{@ayrton.cintura}, Cadera=#{@ayrton.cadera}, Bicipital=#{@ayrton.bicipital}, Tricipital=#{@ayrton.tricipital}, Subescapular=#{@ayrton.subescapular}, Suprailiaco=#{@ayrton.suprailiaco}, Brazo=#{@ayrton.brazo}]:")
                	end
			
		        it "Existe un método para comprobar el tipo de objeto" do
          			expect(@ayrton.instance_of? Individuo::Paciente).to eq(true)
				expect(@ayrton.instance_of? Object).not_to eq(true)
				expect(@ayrton.instance_of? BasicObject).not_to eq(true)
				expect(@ayrton).to respond_to(:numero_historia, :nombre, :apellido, :fecha_nacimiento, :ocupacion, :fumador, :sexo, :edad, :peso_teorico_ideal, :peso, :talla, :cintura, :cadera, :bicipital, :tricipital, :subescapular, :suprailiaco, :brazo)
				expect(@ayrton).to respond_to('to_s')
				expect(@ayrton).to respond_to('imc')
				expect(@ayrton).to respond_to('porcentajegrasa')
				expect(@ayrton).to respond_to('RCC')
        		end

       			it "Existe un método para comprobar la clase de un objeto" do
          			expect(@ayrton.class).to eq(Individuo::Paciente)
          			expect(@ayrton.is_a? Individuo::Individuo).to eq(true)
          			expect(@ayrton.is_a? Individuo::Paciente).to eq(true)
        		end

       		 	it "Existe un método para comprobar la jerarquía de un objeto" do
         	 		expect(@ayrton.kind_of? Individuo::Individuo).to eq(true)
          			expect(@ayrton.kind_of? Individuo::Paciente).to eq(true)
          			expect(@ayrton.kind_of? BasicObject).to eq(true)
          			expect(@ayrton.kind_of? Object).to eq(true)
        		end			
			
		end

		describe "Pruebas para comparar individuos" do
                        it "Comparacion menor estricto de la edad" do
				expect(@ayrton < @rosy).to eq(true)
				expect(@rosy < @ayrton).to eq(false)
                        end

			it "Comparacion mayor estricto de la edad" do
				expect(@rosy > @ayrton).to eq(true)
				expect(@ayrton > @rosy).to eq(false)
			end
			
			it "Comparacion igual de la edad" do
				expect(@ayrton == @eduardo).to eq(true)
				expect(@ayrton == @rosy).to eq(false)
			end
		
			it "Comparacion menor igual de la edad" do
				expect(@ayrton <= @rosy).to eq(true)
				expect(@rosy <= @ayrton).to eq(false)
			end
			
			it "Comparacion mayor igual de la edad" do
				expect(@ayrton >= @saray).to eq(true)
				expect(@saray >= @ayrton).to eq(false)
			end
        end

        describe "Métodos para los Menús Dietéticos" do
			it "Peso teorico ideal" do
				expect(@ayrton.peso_teorico_ideal).to eq(71)
				expect(@eduardo.peso_teorico_ideal).to eq(67.25)
				expect(@saray.peso_teorico_ideal).to eq(47.75)
				expect(@joseLuis.peso_teorico_ideal).to eq(63.49999999999999)
				expect(@rosy.peso_teorico_ideal).to eq(62.74999999999999)
			end

			it "Gasto energético basal hombres" do
				expect(@ayrton.gasto_energetico_basal_hombres).to eq(1666.5)
				expect(@eduardo.gasto_energetico_basal_hombres).to eq(1655.25)
				expect(@joseLuis.gasto_energetico_basal_hombres).to eq(1664.0)
			end

			it "Gasto energético basal mujeres" do
				expect(@saray.gasto_energetico_basal_mujeres).to eq(1563.75)
				expect(@rosy.gasto_energetico_basal_mujeres).to eq(2078.75)
			end

			it "Efecto termógeno de los alimentos" do
				expect(@ayrton.efecto_termogeno_hombres).to eq(166.65)
				expect(@eduardo.efecto_termogeno_hombres).to eq(165.525)
				expect(@saray.efecto_termogeno_mujeres).to eq(156.375)
				expect(@joseLuis.efecto_termogeno_hombres).to eq(166.4)
				expect(@rosy.efecto_termogeno_mujeres).to eq(207.875)
			end

			it "Gasto por actividad física" do
				expect(@ayrton.gasto_actividad_fisica_hombres).to eq(899.9100000000001)
				expect(@eduardo.gasto_actividad_fisica_hombres).to eq(446.9175)
				expect(@saray.gasto_actividad_fisica_mujeres).to eq(844.4250000000001)
				expect(@joseLuis.gasto_actividad_fisica_hombres).to eq(199.68)
				expect(@rosy.gasto_actividad_fisica_mujeres).to eq(0.0)
			end

			it "Gasto energético total" do
				expect(@ayrton.gasto_energetico_total_hombres).to eq(2733.0600000000004)
				expect(@eduardo.gasto_energetico_total_hombres).to eq(2267.6925)
				expect(@saray.gasto_energetico_total_mujeres).to eq(2564.55)
				expect(@joseLuis.gasto_energetico_total_hombres).to eq(2030.0800000000002)
				expect(@rosy.gasto_energetico_total_mujeres).to eq(2286.625)
			end
		end
	end

	describe Lista::Lista do
		before :all do
			@lista = Lista::Lista.new()
				@sara = Individuo::Paciente.new(1, "Sara", "Perez", "17-08-1995", "Estudiante", "No", 0, 23, 64.0, 1.64, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,20.8], 0)
				@eduardo = Individuo::Paciente.new(2, "Eduardo", "Escobar", "13-02-1995", "Estudiante", "No", 1, 23, 85.0, 1.73, [94,95], [100,102], [2.1,2.3,2.1], [1.8,1.9,1.0], [4.1,4.2,4.3], [6.4,5.5,6.6], [24.9,25.1], 0.27)
				@saray = Individuo::Paciente.new(3, "Saray", "Garcia", "01-02-2008", "Estudiante", "No", 0, 10, 69.0, 1.47, [68,69], [89,90], [2.5,8.6,8.7], [2.8,8.9,8.0], [8.1,3.2,3.3], [8.4,3.5,3.6], [13.5,14.1], 0.54)
				@joseLuis = Individuo::Paciente.new(4, "Jose Luis", "Crespo", "27-03-1961", "Parado", "No", 1, 55, 105.0, 1.68, [88,89], [86,87], [9.5,2.6,9.7], [2.9,9.9,3.0], [9.1,3.2,9.3], [6.4,9.5,3.6], [27.5,27.8], 0.12)
				@rosy = Individuo::Paciente.new(5, "Rosa", "Garcia", "01-05-1962", "Parada", "No", 0, 54, 130.0, 1.67, [50,51], [72,73], [7.5,2.6,2.7], [7.8,2.9,3.0], [7.1,3.2,7.3], [3.4,7.5,7.6], [18.9,19.1], 0)
			end


		describe "Listas" do

			it "Existe una lista vacía con head y tail nulos" do
				expect(@lista.empty).to eq(true)
				expect(@lista.head.value).to eq(nil)
				expect(@lista.tail.value).to eq(nil)
				expect(@lista.size).to eq(0)
			end

			it "Existe un nodo inicio donde next y prev esten vacios" do
				expect(@lista.head.next).to eq(nil)
				expect(@lista.tail.prev).to eq(nil)
			end

			it "Existe un metodo para insertar elementos en la lista" do
				expect(@lista.insertar_nodo(@sara)).to eq(@sara)
				expect(@lista.insertar_nodo(@eduardo)).to eq(@eduardo)
				expect(@lista.insertar_nodo(@saray)).to eq(@saray)
				expect(@lista.insertar_nodo(@joseLuis)).to eq(@joseLuis)
				expect(@lista.insertar_nodo(@rosy)).to eq(@rosy)
			end

			it "Existe una lista que ya no está vacía" do
				expect(@lista.empty).to eq(false)
			end

			it "Existe un head que es el primer elemento insertado" do
				expect(@lista.head.value).to eq(@sara)
			end

			it "Existe una clasificacion de la OMS segun el IMC" do
				expect(@lista.extraer_nodo_head.imc).to be <= 24.9 #Peso adecuado. No recibe tratamiento
				expect(@lista.extraer_nodo_head.imc).to be <= 29.9 #Sobrepeso. Recibe tratamiento
				expect(@lista.extraer_nodo_head.imc).to be <= 34.9 #Obesidad grado 1. Recibe tratamiento
				expect(@lista.extraer_nodo_head.imc).to be <= 39.9 #Obesidad grado 2. Recibe tratamiento
				expect(@lista.extraer_nodo_head.imc).to be >= 40.0 #Obesidad grado 3. Recibe tratamiento
			end

			it "Existe un método para comprobar el tipo de objeto" do
	                        expect(@lista.instance_of? Lista::Lista).to eq(true)
        	                expect(@lista.instance_of? Object).not_to eq(true)
                	        expect(@lista.instance_of? BasicObject).not_to eq(true)
                       		expect(@lista).to respond_to(:head, :tail, :size)
                        	expect(@lista).to respond_to('empty')
				expect(@lista).to respond_to('insertar_nodo')
				expect(@lista).to respond_to('extraer_nodo_head')
               		end

                	it "Existe un método para comprobar la clase de un objeto" do
                        	expect(@lista.class).to eq(Lista::Lista)
                        	expect(@lista.is_a? Lista::Lista).to eq(true)
                	end

                	it "Existe un método para comprobar la jerarquía de un objeto" do
                        	expect(@lista.kind_of? Lista::Lista).to eq(true)
                        	expect(@lista.kind_of? BasicObject).to eq(true)
                        	expect(@lista.kind_of? Object).to eq(true)
                	end
			
			it "Existe una lista que ya no está vacía" do
                                expect(@lista.empty).to eq(true)
                        end

			it "Existe una lista vacia" do
				expect(@lista.empty).to eq(true)
			end


                        it "Ordenando con sort" do
                                @lista.insertar_nodo(@joseLuis)
                                @lista.insertar_nodo(@saray)
                                @lista.insertar_nodo(@rosy)
                                expect(@lista.sort).to eq([@saray,@rosy,@joseLuis])
                        end

                        it "Ordenando con collect" do
                                expect(@lista.collect { |i| i }).to eq([@joseLuis,@saray,@rosy])
                        end

                        it "Función Min" do
                               expect(@lista.min).to eq(@saray)
                        end

                        it "Función max" do
                                expect(@lista.max).to eq(@joseLuis)
                        end

                        it "Select" do
                                expect(@lista.select { |i| i.edad.round % 2 == 0}).to eq([@saray,@rosy])
                        end


		end
	end

	describe PruebasNutricion::PruebasNutricion do
		before :each do
			@cereales_chocolate = PruebasNutricion::PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)
		end
	
		describe "expectativas" do
		
			it "Existe un método para comprobar el tipo de objeto" do
                                expect(@cereales_chocolate.instance_of? PruebasNutricion::PruebasNutricion).to eq(true)
                                expect(@cereales_chocolate.instance_of? Object).not_to eq(true)
                                expect(@cereales_chocolate.instance_of? BasicObject).not_to eq(true)
                                expect(@cereales_chocolate).to respond_to(:nombre_etiqueta, :grasas, :grasas_saturadas, :hidratos_carbono, :azucares, :proteinas, :sal)
				expect(@cereales_chocolate).to respond_to('kilojulios')
                                expect(@cereales_chocolate).to respond_to('kilocalorias')
                                expect(@cereales_chocolate).to respond_to('ingesta_recomendada')
				expect(@cereales_chocolate).to respond_to('to_s')
                        end

                        it "Existe un método para comprobar la clase de un objeto" do
                                expect(@cereales_chocolate.class).to eq(PruebasNutricion::PruebasNutricion)
                                expect(@cereales_chocolate.is_a? PruebasNutricion::PruebasNutricion).to eq(true)
                        end

                        it "Existe un método para comprobar la jerarquía de un objeto" do
                                expect(@cereales_chocolate.kind_of? PruebasNutricion::PruebasNutricion).to eq(true)
                                expect(@cereales_chocolate.kind_of? BasicObject).to eq(true)
                                expect(@cereales_chocolate.kind_of? Object).to eq(true)
                        end
		end
	end
	
end
