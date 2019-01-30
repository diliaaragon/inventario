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

  def sumar_producto(name, cant)
    index = search(name)
    producto = @productos[index]
    if index
      producto.agregar_cantidad(cant)
      puts "Todo listo"
    else
      print "El producto no existe"
    end
  end

  def eliminar(name)
    index = search(name)
    @productos.delete_at(index) 
    puts "Producto eliminado"
  end

  def restar_producto(name,cant)
    index = search(name)
    producto = @productos[index]
    if index && cant <= producto.cantidad 
      producto.restar_cantidad(cant)
    else 
      print "La cantidad exitente no es suficiente"
    end 
  end
 
  def listado
    @productos.each do |producto|
     puts "El producto #{producto.nombre} tiene: #{producto.cantidad}"
    end
  end

  def informacion(name)
    index = search(name)
    producto = @productos[index]
    if index
      puts producto.historia
    else
      puts "El producto ingresado no existe"
    end
  end
 
  def search(name)
    @productos.each_with_index do |producto, index|
      if producto.nombre == name
        return index 
      end
    end
    return nil
  end
end
