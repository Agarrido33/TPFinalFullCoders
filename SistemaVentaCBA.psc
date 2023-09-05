Algoritmo SistemaVentaCBA
    Definir usuario Como Cadena
    Definir opcion_usuario, opcion_submenu, continuar Como Entero
    Definir codigo_cubierta, marca_cubierta Como Cadena
    Definir cantidad_cubierta, precio_unitario, subtotal, total_factura Como Real
	
    usuario <- ""
    continuar <- 1
    
    // Inicializamos variables
    cantidad_cubierta <- 0
    precio_unitario <- 0
    subtotal <- 0
    total_factura <- 0
    
    Mientras continuar <> 0 Hacer
        Escribir "----------------------------------------"
        Escribir "Bienvenido a CBA Servicios - Venta de Cubiertas"
        Escribir "----------------------------------------"
        Escribir "Ingrese su usuario (usu sin contraseña): "
        Leer usuario
        
        Si usuario = "usu" Entonces
            opcion_usuario <- 0
            Mientras opcion_usuario <> 5 Hacer
                Escribir "----------------------------------------"
                Escribir "Menú de Usuario - CBA Servicios"
                Escribir "----------------------------------------"
                Escribir "1. Registrar Venta de Cubierta."
                Escribir "2. Consultar Factura."
                Escribir "5. Volver al menú de logeo."
                Escribir "----------------------------------------"
                Escribir "Ingrese una opción: "
                Leer opcion_usuario
                
                Segun opcion_usuario
                    Caso 1:
                        Escribir "----------------------------------------"
                        Escribir "CBA Servicios - Registrar Venta de Cubierta"
						
                        Escribir "Ha seleccionado Registrar Venta de Cubierta."
                        Escribir "Ingrese el código de la cubierta: "
                        Leer codigo_cubierta
                        Escribir "Ingrese la marca de la cubierta: "
                        Leer marca_cubierta
                        Escribir "Ingrese la cantidad de cubiertas vendidas: "
                        Leer cantidad_cubierta
                        Escribir "Ingrese el precio unitario de la cubierta: "
                        Leer precio_unitario
                        
                        // Calculamos el subtotal
                        subtotal <- cantidad_cubierta * precio_unitario
                        
                        Escribir "Venta registrada:"
                        Escribir "Código de Cubierta: ", codigo_cubierta
                        Escribir "Marca de Cubierta: ", marca_cubierta
                        Escribir "Cantidad Vendida: ", cantidad_cubierta
                        Escribir "Precio Unitario: $", precio_unitario
                        Escribir "Subtotal: $", subtotal
                        total_factura <- total_factura + subtotal
                        
                        Escribir "----------------------------------------"
                        Escribir "Presione Enter para continuar..."
                        Leer opcion_submenu
                    Caso 2:  // Consultar Factura
                        Escribir "----------------------------------------"
                        Escribir "CBA Servicios - Consultar Factura"
						
                        Escribir "Factura Tipo A"
                        Escribir "Total a Pagar: $", total_factura
                        
                        Escribir "----------------------------------------"
                        Escribir "Presione Enter para continuar..."
                        Leer opcion_submenu
                FinSegun
            FinMientras
        Sino
            Escribir "Usuario incorrecto. Intente nuevamente."
        FinSi
    FinMientras
FinAlgoritmo
