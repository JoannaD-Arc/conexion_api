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
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.nulnOil)
            
            VStack{
                    switch(controlador.estado){
                        case .descargando_publicacion:
                            VistaDescargandoDatos()
                            
                        case .en_espera:
                            if let publicacion = controlador.publicacion{
                                VistaPublicacion(publicacion: publicacion)
                            }
                            
                        case .error_en_descarga:
                            VistaErrorDescarga()
                            
                        default:
                            Text("Si ves esto, puedes mostrar esta pantalla por una galleta.")
                            
                    }
            }.padding(10)
             .onAppear{
                controlador.descargar_publicacion(id: id)
             }
        }
    }
}

#Preview {
    PantallaPublicacion(id: 3)
        .environment(ControladorGeneral())
}
