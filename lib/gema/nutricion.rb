class PruebasNutricion

	def initialize(nombre, grasas, grasas_saturadas, hidratos_carbono, azucares, proteinas)
		@nombre, @grasas, @grasas_saturadas, @hidratos_carbono, @azucares, @proteinas = nombre, grasas, grasas_saturadas, hidratos_carbono, azucares, proteinas
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
end
