
#Modulo individuo que incluye las clases y los metodos de los individuos

module Individuo

#Clase individuo que contienen los atributos nombre, apellido, fecha de nacimiento, ocupacio, fumador, sexo, edad

class Individuo::Individuo

	#Atributos de la clase individuo que son accesibles desde cualquier funcion metodo de la clase

	attr_accessor :numero_historia, :nombre, :apellido, :fecha_nacimiento, :ocupacion, :fumador, :sexo, :edad

	#Incluyendo el metodo comparable para comparar individuos

	include Comparable 

	#Metodo initialize para inicializar los atributos

	def initialize(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad)
		@numero_historia, @nombre, @apellido, @fecha_nacimiento, @ocupacion, @fumador, @sexo, @edad = numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad
	end

	#Metodo para mostrar el flujo de salida formateado

	def to_s
		"[Numero De Historia=#{@numero_historia}, Nombre=#{@nombre}, Apellido=#{@apellido}, Fecha De Nacimiento=#{@fecha_nacimiento}, Ocupacion=#{@ocupacion}, Fumador=#{@fumador}, Sexo=#{@sexo}, Edad=#{@edad}]:"
	end



end

#Clase Paciente que hereda de la clase padre Individuo y tiene como atributos propios peso y la talla

class Paciente < Individuo 

	#Atributos de la clase paciente que son accesibles desde cualquier funcion metodo de la clase
	attr_accessor :peso, :talla

	#Metodo initialize para iniciar los atributos
	
	def initialize(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad, peso, talla, cintura, cadera, bicipital, tricipital, subescapular, suprailiaco, brazo, factor_actividad_fisica)
		super(numero_historia, nombre, apellido, fecha_nacimiento, ocupacion, fumador, sexo, edad)
		@peso, @talla, @cintura, @cadera, @bicipital, @tricipital, @subescapular, @suprailiaco, @brazo, @factor_actividad_fisica = peso, talla, cintura, cadera, bicipital, tricipital, subescapular, suprailiaco, brazo, factor_actividad_fisica
	end


	#Metodo para mostrar el flujo de salida formateado

	def to_s
                "[Peso=#{@peso}, Talla=#{@talla}, Cintura=#{cintura}, Cadera=#{cadera}, Bicipital=#{bicipital}, Tricipital=#{tricipital}, Subescapular=#{subescapular}, Suprailiaco=#{suprailiaco}, Brazo=#{brazo}]:"
        end

	#Funcion para calcular el bicipital de un individuo

	def bicipital
		(@bicipital[0] + @bicipital[1] + @bicipital[2])/3
	end

	#Funcion para calcular el tricipital de un individuo
	def tricipital 
		(@tricipital[0] + @tricipital[1] + @tricipital[2])/3
	end

	#Funcion para calcular el indice de masa corporal de un individuo

	def imc 
		@peso/(@talla*@talla)
	end

	#Funcion para calcular el subescapular de un individuo

	def subescapular
		(@subescapular[0] + @subescapular[1] + @subescapular[2])/3
	end

	#Funcion para calcular el suprailiaco de un individuo

	def suprailiaco
		(@suprailiaco[0] + @suprailiaco[1] + @suprailiaco[2])/3
	end

	#Funcion para calcular el porcentaje de grasa de un individuo

	def porcentajegrasa
		1.2 * imc + 0.23 * @edad - 10.8 * @sexo - 5.4
	end

	#Funcion para calcular la cintura de un individuo

	def cintura
		(@cintura[0] + @cintura[1])/2
	end

	#Funcion para calcular la cadera de un individuo

	def cadera
		(@cadera[0] + @cadera[1])/2
	end

	#Funcion para calcular la relacion cintura cadera

	def RCC
		cintura/cadera
	end

	#Funcion para calcular el brazo de un individuo

	def brazo
		(@brazo[0] + @brazo[1])/2
	end

	#Funcion para comparar la edad de los individuos con <, >, ==, <=, >=

	def <=>(otro)
		edad <=> otro.edad
        end

    def peso_teorico_ideal
    	@peso_teorico_ideal = (@talla - 1.50)*100 * 0.75 + 50
    end 

    def gasto_energetico_basal_hombres
    	@gasto_energetico_basal_hombres = ((10* @peso) + (6.25 * @talla * 100) - (5 * @edad) - 161)
    end

    def gasto_energetico_basal_mujeres
    	@gasto_energetico_basal_mujeres = ((10* @peso) + (6.25 * @talla * 100) - (5 * @edad) + 5)
    end

    def efecto_termogeno_hombres
    	@efecto_termogeno_hombres = (gasto_energetico_basal_hombres * 0.10)
    end

    def efecto_termogeno_mujeres
    	@efecto_termogeno_mujeres = (gasto_energetico_basal_mujeres * 0.10)
    end

    def gasto_actividad_fisica_hombres
    	@gasto_actividad_fisica_hombres = gasto_energetico_basal_hombres * @factor_actividad_fisica
    end

    def gasto_actividad_fisica_mujeres
    	@gasto_actividad_fisica_mujeres = gasto_energetico_basal_mujeres * @factor_actividad_fisica
    end

 
end

end
