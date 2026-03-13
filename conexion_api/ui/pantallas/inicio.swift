//
//  inicio.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//
import SwiftUI


struct Inicio: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        Text("Hola mundo")
        
        switch(controlador.estado){
            case .descargando_datos:
                Text("CArgando, por favor espera")
                
            case .mostrarando_datos:
                NavigationStack{
                    ScrollView{
                        ForEach(controlador.publicaciones){ publicacion in
                            NavigationLink{
                                
                            } label: {
                                Text(publicacion.title)
                            }
                        }
                    }
                }
                
                
            case .error_en_descarga:
                Text("ERROR: Asegurate de tener wifi!!!")
        }
        
    }
}

#Preview {
    Inicio()
        .environment(ControladorGeneral())
}
