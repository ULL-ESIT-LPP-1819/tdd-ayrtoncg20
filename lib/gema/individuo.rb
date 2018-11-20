class Individuo
	
	attr_accessor :numero_historia, :nombre, :apellido, :fecha_nacimiento, :ocupacion, :fumador, :sexo
	def initialize(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo)
		@numero_historia, @nombre, @apellido, @fecha_nacimiento, @ocupacion, @fumador, @sexo = numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo
	end

	def to_s
		"[Numero De Historia=#{@numero_historia}, Nombre=#{@nombre}, Apellido=#{@apellido}, Fecha De Nacimiento=#{@fecha_nacimiento}, Ocupacion=#{@ocupacion}, Fumador=#{@fumador}, Sexo=#{@sexo}]:"
	end
end


class Paciente < Individuo 


#	attr_accessor :peso, :talla
#	def initialize(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, peso, talla, cintura, cadera, bicipital, tricipital, subescapular, suprailiaco, brazo)
#		super(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo)
#		@peso, @talla, @cintura, @cadera, @bicipital, @tricipital, @subescapular, @suprailiaco, @brazo = peso, talla, cintura, cadera, bicipital, tricipital, subescapular, suprailiaco, brazo	
#	end

end

