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
	
	def kilocalorias
		(@grasas*9)+(@hidratos_carbono*4)+(@proteinas*4)+(@sal*6)
	end

	def ingesta_recomendada
		(@grasas*100)/70
	end

	def ingesta_recomendada_proteinas
		(@proteinas*100)/50
	end

	def to_s
		"[#{nombre_etiqueta}, Grasas=#{grasas}, GrasasSaturadas=#{grasas_saturadas}, HidratosCarbono=#{hidratos_carbono}, Azucares=#{azucares}, Proteinas=#{proteinas}, Sal=#{sal}]:"
	end
end
