Algoritmo SistemaCBA
    Definir usuario Como Cadena
    Definir opcion_usuario, opcion_submenu, continuar Como Entero
    Definir codigo_producto, nombre_producto Como Cadena
    Definir cantidad_producto Como Entero
    Definir stock_producto2 Como Entero  // Variable para el stock del producto 2
	
    usuario <- ""
    continuar <- 1
    
    // Inicializamos el stock del producto 2
    stock_producto2 <- 0
    
    Mientras continuar <> 0 Hacer
        Escribir "----------------------------------------"
        Escribir "Bienvenido a CBA Servicios"
        Escribir "----------------------------------------"
        Escribir "Ingrese su usuario (usu sin contraseña): "
        Leer usuario
        
        Si usuario = "usu" Entonces
            opcion_usuario <- 0
            Mientras opcion_usuario <> 5 Hacer
                Escribir "----------------------------------------"
                Escribir "Menú de Usuario - CBA Servicios"
                Escribir "----------------------------------------"
                Escribir "1. Cargar código."
                Escribir "2. Ingresar Producto."
                Escribir "3. Consultar stock."
                Escribir "5. Volver al menú de logeo."
                Escribir "----------------------------------------"
                Escribir "Ingrese una opción: "
                Leer opcion_usuario
                
                Segun opcion_usuario
                    Caso 1:
                        Escribir "----------------------------------------"
                        Escribir "CBA Servicios - Cargar código"
						
                        Escribir "Ha seleccionado Cargar código."
                        Escribir "Ingrese el código del producto: "
                        Leer codigo_producto
                        Escribir "Ingrese el nombre del producto: "
                        Leer nombre_producto
                        
                        // Tranqui, acá no se hace nada con el stock
                        
                        Escribir "Producto creado:"
                        Escribir "Código: ", codigo_producto
                        Escribir "Nombre: ", nombre_producto
                        Escribir "Ingrese 0 para volver al menú de Usuario o cualquier otro número para continuar."
                        Leer opcion_submenu
                        Si opcion_submenu = 0 Entonces
                            opcion_usuario <- 0
                        FinSi
                    Caso 2:  // Cambiado el texto a "Ingresar Producto"
                        Escribir "----------------------------------------"
                        Escribir "CBA Servicios - Ingresar Producto"
						
                        Escribir "Ha seleccionado Ingresar Producto."
                        Escribir "Ingrese el código del producto: "
                        Leer codigo_producto
                        Escribir "Ingrese el nombre del producto: "
                        Leer nombre_producto
                        Escribir "Ingrese la cantidad del producto: "
                        Leer cantidad_producto
                        
                        // Actualizamos el stock del producto 2 . Lo probe con varias alta y sirve. 
                        stock_producto2 <- stock_producto2 + cantidad_producto
                        
                        Escribir "Producto ingresado:"
                        Escribir "Código: ", codigo_producto
                        Escribir "Nombre: ", nombre_producto
                        Escribir "Cantidad: ", cantidad_producto
                        Escribir "Ingrese 0 para volver al menú de Usuario o cualquier otro número para continuar."
                        Leer opcion_submenu
                        Si opcion_submenu = 0 Entonces
                            opcion_usuario <- 0
                        FinSi
                    Caso 3:  // Cambiado el texto a "Consultar stock" . Acá consultamos, por ahora solo pongo el código y cantidad_producto
                        Escribir "----------------------------------------"
                        Escribir "CBA Servicios - Consultar stock"
						
                        Escribir "Ha seleccionado Consultar stock."
                        Escribir "Ingrese el código del producto: "
                        Leer codigo_producto
                        
                        // Mostramos el nombre del producto y su stock
                        Si codigo_producto = "codigo2" Entonces
                            nombre_producto <- "Producto 2"
                            cantidad_producto <- stock_producto2
                        Sino
                            Escribir "Producto con código ", codigo_producto, " no encontrado."
                        FinSi
                        
                        Si cantidad_producto <> 0 Entonces
                            Escribir "Producto con código ", codigo_producto
                            Escribir "Nombre: ", nombre_producto
                            Escribir "Stock: ", cantidad_producto  // Mostramos el stock del producto
                        FinSi
                        
                        Escribir "Ingrese 0 para volver al menú de Usuario o cualquier otro número para continuar."
                        Leer opcion_submenu
                        Si opcion_submenu = 0 Entonces
                            opcion_usuario <- 0
                        FinSi
                FinSegun
            FinMientras
        Sino
            Escribir "Usuario incorrecto. Intente nuevamente."
        FinSi
    FinMientras
FinAlgoritmo
