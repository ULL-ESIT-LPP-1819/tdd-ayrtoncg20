
module Individuo


class Individuo::Individuo

	attr_accessor :numero_historia, :nombre, :apellido, :fecha_nacimiento, :ocupacion, :fumador, :sexo, :edad

	include Comparable 

	def initialize(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad)
		@numero_historia, @nombre, @apellido, @fecha_nacimiento, @ocupacion, @fumador, @sexo, @edad = numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad
	end

	def to_s
		"[Numero De Historia=#{@numero_historia}, Nombre=#{@nombre}, Apellido=#{@apellido}, Fecha De Nacimiento=#{@fecha_nacimiento}, Ocupacion=#{@ocupacion}, Fumador=#{@fumador}, Sexo=#{@sexo}, Edad=#{@edad}]:"
	end



end


class Paciente < Individuo 


	attr_accessor :peso, :talla
	def initialize(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad, peso, talla, cintura, cadera, bicipital, tricipital, subescapular, suprailiaco, brazo)
		super(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad)
		@peso, @talla, @cintura, @cadera, @bicipital, @tricipital, @subescapular, @suprailiaco, @brazo = peso, talla, cintura, cadera, bicipital, tricipital, subescapular, suprailiaco, brazo	
	end

	def to_s
                "[Peso=#{@peso}, Talla=#{@talla}, Cintura=#{cintura}, Cadera=#{cadera}, Bicipital=#{bicipital}, Tricipital=#{tricipital}, Subescapular=#{subescapular}, Suprailiaco=#{suprailiaco}, Brazo=#{brazo}]:"
        end

	def bicipital
		(@bicipital[0] + @bicipital[1] + @bicipital[2])/3
	end

	def tricipital 
		(@tricipital[0] + @tricipital[1] + @tricipital[2])/3
	end

	def imc 
		@peso/(@talla*@talla)
	end

	def subescapular
		(@subescapular[0] + @subescapular[1] + @subescapular[2])/3
	end

	def suprailiaco
		(@suprailiaco[0] + @suprailiaco[1] + @suprailiaco[2])/3
	end

	def porcentajegrasa
		1.2 * imc + 0.23 * @edad - 10.8 * @sexo - 5.4
	end

	def cintura
		(@cintura[0] + @cintura[1])/2
	end

	def cadera
		(@cadera[0] + @cadera[1])/2
	end

	def RCC
		cintura/cadera
	end

	def brazo
		(@brazo[0] + @brazo[1])/2
	end

	def <=>(otro)
		edad <=> otro.edad
        end

 
end

end
