Algoritmo SistemaCBA
    Definir usuario Como Cadena
    Definir opcion_usuario, opcion_submenu, continuar Como Entero
    
    usuario <- ""
    continuar <- 1
    
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
                Escribir "2. Consultar stock."
                Escribir "3. Ingresar Producto."
                Escribir "4. Eliminar Producto."
                Escribir "5. Volver al menú de logeo."
                Escribir "----------------------------------------"
                Escribir "Ingrese una opción: "
                Leer opcion_usuario
                
                Segun opcion_usuario
                    Caso 1:
                        Escribir "Ha seleccionado Cargar código."
                        Escribir "Ingrese 0 para volver al menú de Usuario o cualquier otro número para continuar."
                        Leer opcion_submenu
                        Si opcion_submenu = 0 Entonces
                            opcion_usuario <- 0
                        FinSi
                    Caso 2:
                        Escribir "Ha seleccionado Consultar stock."
                        Escribir "Ingrese 0 para volver al menú de Usuario o cualquier otro número para continuar."
                        Leer opcion_submenu
                        Si opcion_submenu = 0 Entonces
                            opcion_usuario <- 0
                        FinSi
                    Caso 3:
                        Escribir "Ha seleccionado Ingresar Producto."
                        Escribir "Ingrese 0 para volver al menú de Usuario o cualquier otro número para continuar."
                        Leer opcion_submenu
                        Si opcion_submenu = 0 Entonces
                            opcion_usuario <- 0
                        FinSi
                    Caso 4:
                        Escribir "Ha seleccionado Eliminar Producto."
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
