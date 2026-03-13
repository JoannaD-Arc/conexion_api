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
        switch(controlador.estado){
            case .descargando_datos:
                Text("Descargando los datos")
                    .onAppear{
                        controlador.descargar_publicacion(id: id)
                    }
                
            case .mostrarando_datos:
                Text("\(controlador.publicacion)")
                
            case .error_en_descarga:
                Text("Existe un error en la descarga")
            
        }
    }
}

#Preview {
    PantallaPublicacion(id: 1)
        .environment(ControladorGeneral())
}
