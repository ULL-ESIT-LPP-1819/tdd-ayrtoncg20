
# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)


#Modulo lista que inclye las clases y sus metodos

module Lista

#Clase lista con atributos head, tail y size

class Lista

	#Atributos de la clase lista accesibles con cualquier metodo de la clase

	attr_accessor :head, :tail, :size

	#Incluyendo el metodo enumerable

	include Enumerable


	#Inicializando los atributos de la clase, head, tail y size

	def initialize()
		@head = Node.new(nil,nil,nil)
		@tail = Node.new(nil,nil,nil)
		@size = 0
	end

	#Funcion para comprobar si una lista esta vacia
	
	def empty()
		if (@size != 0)
			return false
		else 
			return true
		end
	end


	#Funcion para insertar un nodo con un valor en la lista

	def insertar_nodo(value)
		if (empty)
			nodo = Node.new(value,nil,nil)
			@tail = nodo
			@head = nodo
			@size +=1
			return @tail.value
		else
			nodo = Node.new(value,nil,tail)
			@tail.next = nodo
			nodo.prev = @tail
			@tail = nodo
			@size +=1
			return @tail.value
		end	
	end

	#Funcion para extraer un nodo por la cabeza de la lista

	def extraer_nodo_head
		if (@size != 1)
			nodo = @head
			valor = @head.value
			@head = @head.next
			@head.prev = nil
			nodo.next = nil
			nodo.prev = nil
			@size -= 1
		else
			nodo = @head
			valor = @head.value
			@head = nil
			@tail = nil
			@value = nil
			nodo.next = nil
			nodo.prev = nil
			@size -= 1
		end
		return valor
	end

	#Metodo each para poder utilizar otros metodos que contiene el modulo enumerable

	def each 
		inicio = @head	
		while (inicio != nil)
			yield inicio.value
			inicio = inicio.next			
		end
	end	

	def sort_for
		@aux = self.map { |x| x }
		
		for x in 0..@aux.length-1
			for y in 0..@aux.length-2-x
				if ( @aux[y] > @aux[y+1] )
					@aux[y], @aux[y+1] = @aux[y+1], @aux[y]
				end
			end
		end

		return @aux
		
	end

	def sort_each

		@aux = self.map { |x| x}
		@pos = 0

		@aux.each do |x|
			@pos = @pos + 1
			@aux[@pos..@aux.length-1] do |y|
				if (x>y)
					x, y = y, x
				end
			end
		end
	end
end
end
