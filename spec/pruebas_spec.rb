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
end
