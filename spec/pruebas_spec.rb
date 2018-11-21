require 'spec_helper'

RSpec.describe Individuo do
	before :each do	

		@ayrton = Individuo.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1, 23)

	end

	describe "expectativas" do
		
		it "Existe un individuo formateado" do
			expect(@ayrton.to_s).to eq("[Numero De Historia=#{@ayrton.numero_historia}, Nombre=#{@ayrton.nombre}, Apellido=#{@ayrton.apellido}, Fecha De Nacimiento=#{@ayrton.fecha_nacimiento}, Ocupacion=#{@ayrton.ocupacion}, Fumador=#{@ayrton.fumador}, Sexo=#{@ayrton.sexo}, Edad=#{@ayrton.edad}]:")
		end	

	 	it "Existe un método para comprobar el tipo de objeto" do
      			expect(@ayrton.instance_of? Individuo).to eq(true)
    		end

   		it "Existe un método para comprobar la clase de un objeto" do
      			expect(@ayrton.class).to eq(Individuo)
      			expect(@ayrton.is_a? Individuo).to eq(true)
    		end
	   	
		it "Existe un método para comprobar la jerarquía de un objeto" do
      			expect(@ayrton.kind_of? Individuo).to eq(true)
      			expect(@ayrton.kind_of? BasicObject).to eq(true)
      			expect(@ayrton.kind_of? Object).to eq(true)
    		end
	end 
	describe Paciente do               
		before :each do
			@ayrton = Paciente.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1, 23, 83.0, 1.78, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,20.8])
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
          			expect(@ayrton.instance_of? Paciente).to eq(true)
        		end

       			it "Existe un método para comprobar la clase de un objeto" do
          			expect(@ayrton.class).to eq(Paciente)
          			expect(@ayrton.is_a? Individuo).to eq(true)
          			expect(@ayrton.is_a? Paciente).to eq(true)
        		end

       		 	it "Existe un método para comprobar la jerarquía de un objeto" do
         	 		expect(@ayrton.kind_of? Individuo).to eq(true)
          			expect(@ayrton.kind_of? Paciente).to eq(true)
          			expect(@ayrton.kind_of? BasicObject).to eq(true)
          			expect(@ayrton.kind_of? Object).to eq(true)
        		end			
		end
	end

	describe Lista do
		before :all do
			@lista = Lista.new()
				@sara = Paciente.new(1, "Sara", "Perez", "17-08-1995", "Estudiante", "No", 0, 23, 64.0, 1.64, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,20.8])
				@eduardo = Paciente.new(2, "Eduardo", "Escobar", "13-02-1995", "Estudiante", "No", 1, 23, 70.0, 1.73, [94,95], [100,102], [2.1,2.3,2.1], [1.8,1.9,1.0], [4.1,4.2,4.3], [6.4,5.5,6.6], [24.9,25.1])
				@saray = Paciente.new(3, "Saray", "Garcia", "01-02-2008", "Estudiante", "No", 0, 10, 45.0, 1.47, [68,69], [89,90], [2.5,8.6,8.7], [2.8,8.9,8.0], [8.1,3.2,3.3], [8.4,3.5,3.6], [13.5,14.1])
				@joseLuis = Paciente.new(4, "Jose Luis", "Crespo", "27-03-1961", "Parado", "No", 1, 55, 98.0, 1.68, [88,89], [86,87], [9.5,2.6,9.7], [2.9,9.9,3.0], [9.1,3.2,9.3], [6.4,9.5,3.6], [27.5,27.8])
				@rosy = Paciente.new(5, "Rosa", "Garcia", "01-05-1962", "Parada", "No", 0, 54, 87.0, 1.67, [50,51], [72,73], [7.5,2.6,2.7], [7.8,2.9,3.0], [7.1,3.2,7.3], [3.4,7.5,7.6], [18.9,19.1])
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
			end

			it "Existe una lista que ya no está vacía" do
				expect(@lista.empty).to eq(false)
			end

			it "Existe un head que es el primer elemento insertado" do
				expect(@lista.head.value).to eq(@sara)
			end
		end
	end
end
