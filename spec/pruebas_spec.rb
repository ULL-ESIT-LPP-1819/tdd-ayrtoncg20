require 'spec_helper'
require 'benchmark'
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

		describe "Menú dietético" do
			before :all do
		
				@cereales_chocolate = PruebasNutricion::PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)
				@cereales_miel = PruebasNutricion::PruebasNutricion.new("Cereales de miel", 0.8, 0.1, 69.0, 5.0, 6.0, 1.2)
                @donettes = PruebasNutricion::PruebasNutricion.new("Donettes", 1.0, 0.5, 89.0, 9.0, 9.0, 1.9)
                @galletas = PruebasNutricion::PruebasNutricion.new("Galletas", 0.8, 0.1, 34.0, 2.0, 3.0, 3.6)
                @leche = PruebasNutricion::PruebasNutricion.new("Leche", 0.8, 0.1, 10.0, 2.0, 1.0, 1.0)
                @tomate = PruebasNutricion::PruebasNutricion.new("Tomate", 0.4, 0.5, 42.0, 3.0, 4.0, 0.5)
                @mermelada = PruebasNutricion::PruebasNutricion.new("Mermelada", 0.8, 0.6, 23.0, 15.0, 8.0, 1.4)
                @menu1 = [@mermelada, @tomate, @leche]
                @menu2 = [@galletas, @leche, @cereales_chocolate]
                @menu3 = [@galletas, @leche, @cereales_miel]
                @menu4 = [@donettes, @leche, @cereales_chocolate]
                @menu5 = [@tomate, @donettes, @cereales_miel]
			end

			it "Menú: Cumple las exigencias caloricas del paciente" do
           		kilocalorias_menu = @menu1.map{ |i| i.kilocalorias}
           	#en kilocalorias menu metemos las kilocalorias de cada uno de los alimentos
           		total_kilocalorias = kilocalorias_menu.reduce(:+)
           	#Metemos en la variable total las kilocalorias totales del menu
           		gasto_energetico_paciente = @ayrton.gasto_energetico_total_hombres
           	#Calculamos el gasto energetico de ayrton 1666.5, y lo metemos en la variable gasto energetico paciente
           		gasto_energetico_paciente = gasto_energetico_paciente * 0.10
           	#el gasto energetico total del individuo con un margen de error del 10%
           		expect(total_kilocalorias >= gasto_energetico_paciente).to eq(true)
           	#esperamos que el total de las calorias del menu sea mayor o igual a el gasto energetico del paciente con un margen de error del 10%
        	end
        	it "Menú: Cumple las exigencias caloricas del paciente" do
        	#en kilocalorias menu metemos los kilocalorias  de cada uno de los alimentos
           		kilocalorias_menu = @menu2.map{ |i| i.kilocalorias}
            #Hacemos un sumatorio para almacenar todas las kilocalorias en total 
           		total_kilocalorias = kilocalorias_menu.reduce(:+)
           
           		gasto_energetico_paciente = @eduardo.gasto_energetico_total_hombres
           		gasto_energetico_paciente = gasto_energetico_paciente * 0.10
           		expect(total_kilocalorias >= gasto_energetico_paciente).to eq(true)
        	end
        	it "Menú: Cumple las exigencias caloricas del paciente" do
           		kilocalorias_menu = @menu3.collect{ |x| x.kilocalorias}
           
           		total_kilocalorias = kilocalorias_menu.reduce(:+)
           
           		gasto_energetico_paciente = @saray.gasto_energetico_total_mujeres
           		gasto_energetico_paciente = gasto_energetico_paciente * 0.10
           		expect(total_kilocalorias >= gasto_energetico_paciente).to eq(true)
        	end
        	it "Menú: Cumple las exigencias caloricas del paciente" do
           		kilocalorias_menu = @menu4.collect{ |x| x.kilocalorias}
           
           		total_kilocalorias = kilocalorias_menu.reduce(:+)
           
           		gasto_energetico_paciente = @joseLuis.gasto_energetico_total_hombres
           		gasto_energetico_paciente = gasto_energetico_paciente * 0.10
           		expect(total_kilocalorias >= gasto_energetico_paciente).to eq(true)
        	end
        	it "Menú: Cumple las exigencias caloricas del paciente" do
        		menu6 = @menu1.zip(@menu2)
           		kilocalorias_menu = menu6.collect{ |x, index| x.kilocalorias}
           
           		total_kilocalorias = kilocalorias_menu.reduce(:+)
           
           		gasto_energetico_paciente = @rosy.gasto_energetico_total_mujeres
           		gasto_energetico_paciente = gasto_energetico_paciente * 0.10
           		expect(total_kilocalorias >= gasto_energetico_paciente).to eq(true)
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
	
	describe PruebasNutricion::PruebasNutricion do 
		before :all do
			@array = []
			@cereales_chocolate = PruebasNutricion::PruebasNutricion.new("Cereales de chocolate", 0.8, 0.2, 82.0, 7.0, 8.0, 1.6)
			@cereales_miel = PruebasNutricion::PruebasNutricion.new("Cereales de miel", 0.8, 0.1, 69.0, 5.0, 6.0, 1.2)
	        @donettes = PruebasNutricion::PruebasNutricion.new("Donettes", 1.0, 0.5, 89.0, 9.0, 9.0, 1.9)
	        @galletas = PruebasNutricion::PruebasNutricion.new("Galletas", 0.8, 0.1, 34.0, 2.0, 3.0, 3.6)
	        @leche = PruebasNutricion::PruebasNutricion.new("Leche", 0.8, 0.1, 10.0, 2.0, 1.0, 1.0)
	        @tomate = PruebasNutricion::PruebasNutricion.new("Tomate", 0.4, 0.5, 42.0, 3.0, 4.0, 0.5)
	        @mermelada = PruebasNutricion::PruebasNutricion.new("Mermelada", 0.8, 0.6, 23.0, 15.0, 8.0, 1.4)

	        @menu1 = [@mermelada, @tomate, @leche]
	        @menu2 = [@galletas, @leche, @cereales_chocolate]
	        @menu3 = [@galletas, @leche, @cereales_miel]
	        @menu4 = [@donettes, @leche, @cereales_chocolate]
	        @menu5 = [@tomate, @donettes, @cereales_miel]
	        @menu6 = [@leche, @mermelada, @donettes]
	        @menu7 = [@cereales_miel, @cereales_chocolate, @leche]
	        @menu8 = [@tomate, @cereales_miel, @cereales_chocolate]
	        @menu9 = [@galletas, @tomate, @leche]
	        @menu10 = [@galletas, @mermelada, @cereales_miel]

            @array << @menu1
            @array << @menu2
            @array << @menu3
            @array << @menu4
            @array << @menu5
            @array << @menu6
            @array << @menu7
            @array << @menu8
            @array << @menu9
            @array << @menu10

			@lista_nueva = Lista::Lista.new()
			@texenen = Individuo::Paciente.new(10, "Texenen", "Crespo", "17-08-1992", "Trabajador", "No", 1, 23, 64.0, 1.64, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,20.8], 0)
			@carolina = Individuo::Paciente.new(11, "Carolina", "Campos", "13-02-1988", "Estudiante", "No", 0, 24, 85.0, 1.73, [94,95], [100,102], [2.1,2.3,2.1], [1.8,1.9,1.0], [4.1,4.2,4.3], [6.4,5.5,6.6], [24.9,25.1], 0.27)
			@sonia = Individuo::Paciente.new(12, "Sonia", "Coello", "01-02-2008", "Estudiante", "No", 0, 10, 69.0, 1.47, [68,69], [89,90], [2.5,8.6,8.7], [2.8,8.9,8.0], [8.1,3.2,3.3], [8.4,3.5,3.6], [13.5,14.1], 0.54)
			@jose = Individuo::Paciente.new(13, "Jose", "Garcia", "27-03-1961", "Parado", "No", 1, 55, 105.0, 1.68, [88,89], [86,87], [9.5,2.6,9.7], [2.9,9.9,3.0], [9.1,3.2,9.3], [6.4,9.5,3.6], [27.5,27.8], 0.12)
			@pepe = Individuo::Paciente.new(14, "Pepe", "Rosa", "01-05-1962", "Parada", "No", 1, 54, 130.0, 1.67, [50,51], [72,73], [7.5,2.6,2.7], [7.8,2.9,3.0], [7.1,3.2,7.3], [3.4,7.5,7.6], [18.9,19.1], 0)
			@chano = Individuo::Paciente.new(15, "Chano", "Perez", "17-08-1992", "Trabajador", "No", 1, 28, 64.0, 1.64, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,20.8], 0)
			@felisa = Individuo::Paciente.new(16, "Felisa", "Rosa", "13-02-1988", "Estudiante", "No", 0, 45, 85.0, 1.73, [94,95], [100,102], [2.1,2.3,2.1], [1.8,1.9,1.0], [4.1,4.2,4.3], [6.4,5.5,6.6], [24.9,25.1], 0.27)
			@lili = Individuo::Paciente.new(17, "Lili", "Garcia", "01-02-2008", "Estudiante", "No", 0, 17, 69.0, 1.47, [68,69], [89,90], [2.5,8.6,8.7], [2.8,8.9,8.0], [8.1,3.2,3.3], [8.4,3.5,3.6], [13.5,14.1], 0.54)
			@nau = Individuo::Paciente.new(18, "Nau", "Garcia", "27-03-1961", "Parado", "No", 1, 51, 105.0, 1.68, [88,89], [86,87], [9.5,2.6,9.7], [2.9,9.9,3.0], [9.1,3.2,9.3], [6.4,9.5,3.6], [27.5,27.8], 0.12)
			@aytha = Individuo::Paciente.new(19, "Aythami", "Garcia", "01-05-1962", "Parada", "No", 1, 25, 130.0, 1.67, [50,51], [72,73], [7.5,2.6,2.7], [7.8,2.9,3.0], [7.1,3.2,7.3], [3.4,7.5,7.6], [18.9,19.1], 0)
		
		end

		describe "Pruebas" do

			it "Existe un método para insertar elementos en una lista" do
				expect(@lista_nueva.insertar_nodo(@texenen)).to eq(@texenen)
				expect(@lista_nueva.insertar_nodo(@carolina)).to eq(@carolina)
				expect(@lista_nueva.insertar_nodo(@sonia)).to eq(@sonia)
				expect(@lista_nueva.insertar_nodo(@jose)).to eq(@jose)
				expect(@lista_nueva.insertar_nodo(@pepe)).to eq(@pepe)
				expect(@lista_nueva.insertar_nodo(@chano)).to eq(@chano)
				expect(@lista_nueva.insertar_nodo(@felisa)).to eq(@felisa)
				expect(@lista_nueva.insertar_nodo(@lili)).to eq(@lili)
				expect(@lista_nueva.insertar_nodo(@nau)).to eq(@nau)
				expect(@lista_nueva.insertar_nodo(@aytha)).to eq(@aytha)
			end
	
			it "Existe un array NO vacío" do
			    expect(@array[0]).to eq(@menu1)
			    expect(@array[1]).to eq(@menu2)
			    expect(@array[2]).to eq(@menu3)
			    expect(@array[3]).to eq(@menu4)
			    expect(@array[4]).to eq(@menu5)
			    expect(@array[5]).to eq(@menu6)
				expect(@array[6]).to eq(@menu7)
				expect(@array[7]).to eq(@menu8)
				expect(@array[8]).to eq(@menu9)
				expect(@array[9]).to eq(@menu10)
      		end

      		it "Existe un método para ordenar el array y la lista mediante un for" do
      			expect(@array.sort).to eq([@menu6, @menu1, @menu3, @menu2, @menu10, @menu9, @menu8, @menu5, @menu7, @menu4])
      			expect(@lista_nueva.sort).to eq([@sonia, @lili, @texenen, @carolina, @aytha, @chano, @felisa, @nau, @pepe, @jose])
      		end

      		it "Existe un metodo para ordenar el array y la lista mediante for" do
      			expect(@array.sort_for).to eq([@menu6, @menu1, @menu3, @menu2, @menu10, @menu9, @menu8, @menu5, @menu7, @menu4])
      			expect(@lista_nueva.sort_for).to eq([@sonia, @lili, @texenen, @carolina, @aytha, @chano, @felisa, @nau, @pepe, @jose])
      		end

      		it "Existe un metodo para ordenar el array y la lista mediante each" do
      			expect(@array.sort_each).to eq([@menu6, @menu1, @menu3, @menu2, @menu10, @menu9, @menu8, @menu5, @menu7, @menu4])
    			#expect(@lista_nueva.sort_each).to eq([@sonia, @lili, @texenen, @carolina, @aytha, @chano, @felisa, @nau, @pepe, @jose])
    		end


    		it "Benchmark" do
		        n = 1500
		        Benchmark.bm do |x|
		        	x.report("sort:") {n.times{@array.sort}}
		        	x.report("sort_for:") {n.times{@array.sort_for}}
		        	x.report("sort_each:") {n.times{@array.sort_each}}
		        	x.report("sort:") {n.times{@lista_nueva.sort}}
		        	x.report("sort_for:") {n.times{@lista_nueva.sort_for}}
		        	x.report("sort_each:") {n.times{@lista_nueva.sort_each}}
        		end
      		end

		end
	end




end





















	

