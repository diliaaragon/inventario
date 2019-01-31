require './producto'
require 'pry'

class Inventario

  def initialize
    @productos = []
  end

  def agregar(name, cant)
    @productos << Producto.new(name, cant)
    puts "Producto agregado"
  end

  def sumar_producto(index, cant)
    producto = @productos[index]
    if index
      producto.agregar_cantidad(cant)
      puts "Todo listo"
    else
      print "Opcion incorrecta"
    end
  end

  def eliminar(index)
    @productos.delete_at(index)
  end

  def restar_producto(index,cant)
    producto = @productos[index]
    if index && cant <= producto.cantidad
      producto.restar_cantidad(cant)
      puts "Todo listo"
    else
      print "La cantidad exitente no es suficiente"
    end
  end
 
  def listado
    @productos.each_with_index do |producto,index|
     puts "#{index}. El producto #{producto.nombre} tiene: #{producto.cantidad}"
    end
  end

  def informacion(index)
    producto = @productos[index]
    if index
      puts producto.historia
    else
      puts "Opcion incorrecta"
    end
  end
end