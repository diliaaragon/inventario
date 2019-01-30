require './inventario'


class Producto
  attr_accessor :name, :cant, :historia 

  def initialize(n,c)
    self.name = n
    self.cant = c
    self.historia = []
  end

  def agregar_cantidad(y)
    producto.cant += y
    historia << " sumaste_#{y}_articulo(s)"
  end
  
  def restar_cantidad(y)
    producto.cant -= y
    historia << " salieron_#{y}_aericulo(s)"
  end
end
