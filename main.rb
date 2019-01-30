require './inventario'
require './producto'

inventario = Inventario.new
producto = Producto.new

seguir_inventario = true 

while seguir_inventario == true

  print """
  ____________________________
  INVENTARIO ALMACEN DJ ARAGON
  ____________________________
     MENU DE INICIO
     1. Agregar un nuevo producto
     2. agregar exitencia a un producto
     3. Eliminar un producto
     4. Salida de productos 
     5. listado de producto 
     6. informacion de un producto 
     ELIJA UNA OPCION:
     """
  opcion = gets.chomp

  case opcion 
    when 1
      print "ingrese el producto: "
      n = gets.chomp
      print "ingrse la cantidad de articulos: "
      c = gets.chomp
      inventario.agregar(n,c)

    when 2
      print "ingrese el nombre del articulo al que desea sacar cierta cantidad: "
      x = gets.chomp
      print "ingrese la cantidad de exitencias que desea dar salida: "
      y = gets.chomp
      inventario.restar_producto(x,y)

    when 3
      print "ingrse el nombre del articulo que desea eliminar: "
      x = gets.chomp 
      print "esta seguro que desea eliminar? s/n"
      r = gets.chomp 
      if r == "s"
        inventario.eliminar(x)
      elsif r == n 
        print "El articulo no fue eliminado"
      end 

    when 4
      print "Ingrese el nombre del articulo al que desea añadir existencia: "
      x = gets.chomp
      print "Ingrese la cantidad de exitencias que desea añadir: "
      y =gets.chomp

    when 5
      puts "Articulos en el inventario:"
      inventario.listado

    when 6
      puts "ingrese el nombre del articulo del que desea ver histoial: "
      x = gets.chomp
      inventario.informacion(x)
    else puts "Opcion incorrecta "
      
  end 
  puts "desea continuar? n/s"
  seguir_inventario = false if respuesta == "n"
end 