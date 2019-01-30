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
     4. Añadir exixtencia
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
      print "Ingrese el nombre del producto al que desea sacar cierta cantidad: "
      name = gets.chomp
      print "Ingrese la cantidad de exitencias que desea dar salida: "
      cant = gets.chomp.to_i
      inventario.restar_producto(name,cant)

    when 3
      print "Ingrse el nombre del producto que desea eliminar: "
      name = gets.chomp 
      print "Esta seguro que desea eliminar? s/n"
      resp = gets.chomp 
      if resp == "s"
        inventario.eliminar(name)
        puts "Producto eliminado"
      elsif resp == "n" 
        print "El producto no fue eliminado"
      end 

    when 4
      print "Ingrese el nombre del producto al que desea añadir existencia: "
      name = gets.chomp
      print "Ingrese la cantidad de exitencias que desea añadir: "
      cant= gets.chomp.to_i
      inventario.sumar_producto(name,cant)

    when 5
      puts "Articulos en el inventario:"
      inventario.listado

    when 6
      puts "Ingrese el nombre del producto del que desea ver histoial: "
      name = gets.chomp
      inventario.informacion(name)

    else 
    puts "Opcion incorrecta "
  end 
  puts "Desea continuar? n/s"
  respuesta = gets.chomp
  respuesta.downcase
  seguir_inventario = false if respuesta == "n" 
end
