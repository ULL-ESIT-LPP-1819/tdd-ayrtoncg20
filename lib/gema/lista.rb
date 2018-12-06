
# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

module Lista

class Lista

	attr_accessor :head, :tail, :size

	include Enumerable

	def initialize()
		@head = Node.new(nil,nil,nil)
		@tail = Node.new(nil,nil,nil)
		@size = 0
	end
	
	def empty()
		if (@size != 0)
			return false
		else 
			return true
		end
	end

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

	def each 
		inicio = @head	
		while (inicio != nil)
			yield inicio.value
			inicio = inicio.next			
		end
	end	
end
end
