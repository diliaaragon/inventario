require './inventario'
require './producto'

inventario = Inventario.new 

seguir_inventario = true 

while seguir_inventario == true

  print """
  ____________________________
  INVENTARIO ALMACEN DJ ARAGON
  ____________________________
     MENU DE INICIO
     1. Agregar un nuevo producto
     2. Salida de productos
     3. Eliminar un producto
     4. Añadir existencia
     5. Listado de producto
     6. Informacion de un producto
     ELIJA UNA OPCION:
     """
  opcion = gets.chomp.to_i
 
  case opcion
    
    when 1
      print "Ingrese el producto: "
      name = gets.chomp
      print "Ingrse la cantidad de productos: "
      cant = gets.chomp.to_i
      inventario.agregar(name,cant)

    when 2
      inventario.listado
      print "escoja producto: "
      index = gets.chomp.to_i
      print "Ingrese la cantidad de exitencias que desea dar salida: "
      cant = gets.chomp.to_i
      inventario.restar_producto(index,cant)

    when 3
      inventario.listado
      puts "escoja producto: "
      index = gets.chomp.to_i
      puts "Esta seguro que desea eliminar? s/n"
      resp = gets.chomp
      if resp == "s"
        inventario.eliminar(index)
        puts "Producto eliminado"
      elsif resp == "n"
        print "El producto no fue eliminado"
      end

    when 4
      inventario.listado
      puts "escoja producto: "
      index = gets.chomp.to_i
      puts "Ingrese la cantidad de exitencias que desea añadir: "
      cant= gets.chomp.to_i
      inventario.sumar_producto(index,cant)

    when 5
      puts "Articulos en el inventario:"
      inventario.listado

    when 6
      inventario.listado
      puts "escoja producto: "
      index = gets.chomp.to_i
      inventario.informacion(index)

    else
    puts "Opcion incorrecta"
  end
  puts "Desea continuar? n/s"
  respuesta = gets.chomp
  respuesta.downcase
  seguir_inventario = false if respuesta == "n"
end