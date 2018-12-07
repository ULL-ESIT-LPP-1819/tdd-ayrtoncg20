
#Modulo Pruebas de Nutricion que incluye las clases y sus métodos

module PruebasNutricion

	#Clase de las pruebas de la nutricion con atributos nombre, grasas, grasas saturadas, hidratos de carbono, azucares, proteinas y sal
	
	class PruebasNutricion


		#Inclyendo el modulo comparable para comparar dos alimentos
	
		include Comparable
	
		#Método initialize para definir todos los atributos de la clase
	
		def initialize(nombre, grasas, grasas_saturadas, hidratos_carbono, azucares, proteinas, sal)
			@nombre, @grasas, @grasas_saturadas, @hidratos_carbono, @azucares, @proteinas, @sal = nombre, grasas, grasas_saturadas, hidratos_carbono, azucares, proteinas, sal
		end

		#Funciones para implementar los atributos

		def nombre_etiqueta
			@nombre
		end

		#Funcion para el atributo grasas

		def grasas
			@grasas
		end
	
		#Funcion para el atributo grasas saturadas

		def grasas_saturadas
			@grasas_saturadas
		end

		#Funcion para el atributo hidratos de carbono
		
		def hidratos_carbono
			@hidratos_carbono
		end

		#Funcion para el atributo azucares

		def azucares
			@azucares
		end

		#Funcion para el atributo proteinas

		def proteinas
			@proteinas
		end

		#Funcion para el atributo sal

		def sal
			@sal
		end

		#Funcion para calcular los kilojulios de un alimento

		def kilojulios
			(@grasas*37)+(@hidratos_carbono*17)+(@proteinas*17)+(@sal*25)
		end

		#Funcion para calcular las kilocalorias de un alimento
	
		def kilocalorias
			(@grasas*9)+(@hidratos_carbono*4)+(@proteinas*4)+(@sal*6)
		end

		#Funcion para calcular la ingesta recomandada de un alimento

		def ingesta_recomendada
			(@grasas*100)/70
		end

		#Funcion para calcular la ingesta recomendada de las proteinas de un alimento

		def ingesta_recomendada_proteinas
			(@proteinas*100)/50
		end

		#Método para mostrar el flujo de salida formateado

		def to_s
			"[#{nombre_etiqueta}, Grasas=#{grasas}, GrasasSaturadas=#{grasas_saturadas}, HidratosCarbono=#{hidratos_carbono}, Azucares=#{azucares}, Proteinas=#{proteinas}, Sal=#{sal}]:"
		end

		#Funcion para comparar los alimentos por las kilocalorias, <, >, ==, >=, <=
		
		def <=>(other)
			kilocalorias <=> other.kilocalorias
		end
	end	
end	
