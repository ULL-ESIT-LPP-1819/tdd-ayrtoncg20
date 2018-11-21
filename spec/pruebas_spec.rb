require 'spec_helper'

RSpec.describe Individuo do
	before :each do	

		@ayrton = Individuo.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1)

	end

	describe "expectativas" do
		
		it "Existe un individuo formateado" do
			expect(@ayrton.to_s).to eq("[Numero De Historia=#{@ayrton.numero_historia}, Nombre=#{@ayrton.nombre}, Apellido=#{@ayrton.apellido}, Fecha De Nacimiento=#{@ayrton.fecha_nacimiento}, Ocupacion=#{@ayrton.ocupacion}, Fumador=#{@ayrton.fumador}, Sexo=#{@ayrton.sexo}]:")
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
			@ayrton = Paciente.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1, 83.0, 1.78, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,20.8])
		end
	

		describe "expectativas" do

			it "Existe un bicipital para el individuo" do
       		       		 expect(@ayrton.bicipital).to eq((2.5+2.6+2.7)/3)
		 	end
		
			it "Existe un tricipital para el individuo" do
				expect(@ayrton.tricipital).to eq((2.8+2.9+3.0)/3)
			end
		end
	end
end
