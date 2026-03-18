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
                Text("Debería ser una pantalla de perfil.")
            }
            .badge(2)
            
            Tab("Configuración", systemImage: "gearshape"){
                Text("Debería ser una pantalla de configuración")
            }
            .badge("!")
        }
    }
}

#Preview {
    MenuBase()
        .environment(ControladorGeneral())
}
