# create a Struct with :value, :next and :prev
Node = Struct.new(:value, :next, :prev)

class Lista

	attr_accessor :head, :tail, :size

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
			return @tail.value
		else
			nodo = Node.new(value,nil,tail)
			@tail.next = nodo
			nodo.prev = @tail
			@tail = nodo
			return @tail.value
		end	
	end	
end
