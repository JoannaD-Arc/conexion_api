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
        
        NavigationStack{
            switch(controlador.estado){
            case .descargando_publicaciones:
                Text("CArgando, por favor espera")
                
            case .en_espera:
                
                ScrollView{
                    ForEach(controlador.publicaciones){ publicacion in
                        NavigationLink{
                            PantallaPublicacion(id: publicacion.id)
                        } label: {
                            Text(publicacion.title)
                        }.simultaneousGesture(TapGesture().onEnded{
                            controlador.descargar_publicacion(id: publicacion.id)
                        }
                        )
                    }
                }
            case .descargando_publicacion:
                Text("")
                
            case .error_en_descarga:
                Text("ERROR: Asegurate de tener wifi!!!")
            }

        }
    }
}

#Preview {
    Inicio()
        .environment(ControladorGeneral())
}
