require './producto'

class Inventario
  productos =[]

  def agregar(n,c)
    p = Producto.new(n,c)
    productos << p
    return p
  end

  def sumar_product(x,y)
    productos.each do |i|
      if i == x
        produto.agregar_cantidad(y)
      end
    end
  end

  def eliminar(x)
    productos.each do |i|
      if i == x
        productos.delete_at(i) 
      end
    end
  end

  def restsr_product(x,y)
    productos.each do |producto|
      if producto == x
        produto.restar_cantidad(y)
      end
    end
  end
 
  def listado
    productos.each do |producto|
     puts " el producto #{producto.name} tiene: #{producto.cant}"
    end
  end

  def informacion(x)
    productos.each do |producto|
      if producto == x
       puts producto.historia
      else
        print "El producto ingresado no exixte"
      end
    end
  end
end
