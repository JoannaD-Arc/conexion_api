//
//  pantalla_publicacion.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//
import SwiftUI

struct PantallaPublicacion: View {
    var id: Int
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        if(controlador.publicacion == nil){
            
            switch(controlador.estado){
                case .descargando_publicaciones:
                    Text("Descargando los datos")
        
                case .en_espera:
                Text("\(controlador.publicacion)")
                    .onAppear{
                        controlador.descargar_publicacion(id: id)
                    }
                
                case .error_en_descarga:
                    Text("Existe un error en la descarga")
                
                default:
                    Text("Si ves esto, puedes mostrar esta pantalla por una galleta.")
                
            }
            
        }
        else{
            Text("")
        }
    }
}

#Preview {
    PantallaPublicacion(id: 1)
        .environment(ControladorGeneral())
}
