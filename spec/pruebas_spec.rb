require 'spec_helper'

RSpec.describe Individuo do
	before :each do	

		@Ayrton = Individuo.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1)

	end

	describe "expectativas" do
		
		it "Existe un individuo formateado" do
			expect(@Ayrton.to_s).to eq("[Numero De Historia=#{@Ayrton.numero_historia}, Nombre=#{@Ayrton.nombre}, Apellido=#{@Ayrton.apellido}, Fecha De Nacimiento=#{@Ayrton.fecha_nacimiento}, Ocupacion=#{@Ayrton.ocupacion}, Fumador=#{@Ayrton.fumador}, Sexo=#{@Ayrton.sexo}]:")
		end	
	end

	describe "Pacientes" do
	
		@Sara = Paciente.new(1, "Ayrton", "Crespo", "20-01-1995", "Estudiante", "No", 1, 83.0, 1.78, [60,65], [80,87], [2.5,2.6,2.7], [2.8,2.9,3.0], [3.1,3.2,3.3], [3.4,3.5,3.6], [20.0,21.2])
	
	end
end
