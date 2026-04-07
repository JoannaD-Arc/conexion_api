//
//  menu_base.swift
//  conexion_api
//
//  Created by alumno on 3/18/26.
//

import SwiftUI

struct MenuBase: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View{
        TabView{
            Tab("Publicaciones", systemImage: "house"){
                Inicio()
            }
            .badge(controlador.publicaciones.count)
            
            Tab("Perfil", systemImage: "person.crop.circle"){
                PantallaUsuario(id:1)
            }
            .badge(2)
            
            Tab("Crear Publicación", systemImage: "plus.app.fill"){
                PantallaCrearPublicacion(id:1)
            }
            
            Tab("Configuración", systemImage: "gearshape"){
                PantallaConfiguracion()
        }
        

        }
    }
}

#Preview {
    MenuBase()
        .environment(ControladorGeneral())
}
