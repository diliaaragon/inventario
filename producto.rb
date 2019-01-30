require './inventario'

class Producto
  attr_accessor :nombre, :cantidad, :historia

  def initialize(name,cant)
    @nombre = name
    @cantidad = cant
    @historia = []
  end

  def agregar_cantidad(cant)
    @cantidad += cant
    @historia << "Sumaste_#{cant}_articulo(s)"
  end
  
  def restar_cantidad(cant)
    @cantidad -= cant
    @historia << "Salieron_#{cant}_aericulo(s)"
  end
end