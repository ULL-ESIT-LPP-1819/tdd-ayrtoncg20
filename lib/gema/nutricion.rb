class PruebasNutricion

	def initialize(nombre, grasas, grasas_saturadas, hidratos_carbono)
		@nombre, @grasas, @grasas_saturadas, @hidratos_carbono = nombre, grasas, grasas_saturadas, hidratos_carbono
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
end
