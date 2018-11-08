class PruebasNutricion

	def initialize(nombre, grasas, grasas_saturadas, hidratos_carbono, azucares, proteinas, sal)
		@nombre, @grasas, @grasas_saturadas, @hidratos_carbono, @azucares, @proteinas, @sal = nombre, grasas, grasas_saturadas, hidratos_carbono, azucares, proteinas, sal
	end

	def nombre_etiqueta
		@nombre
	end

	def grasas
		@grasas
	end
	
	def grasas_saturadas
		@grasas_saturadas
	end
		
	def hidratos_carbono
		@hidratos_carbono
	end

	def azucares
		@azucares
	end

	def proteinas
		@proteinas
	end

	def sal
		@sal
	end

	def kilojulios
		(@grasas*37)+(@hidratos_carbono*17)+(@proteinas*17)+(@sal*25)
	end
end
