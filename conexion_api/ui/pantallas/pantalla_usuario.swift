//
//  pantalla_usuario.swift
//  conexion_api
//
//  Created by alumno on 3/25/26.
//

import SwiftUI

struct PantallaUsuario: View {
    var id: Int
    
    @State var gestor_usuario = ControladorUsuario()
    
    var body: some View {
        VStack{
            switch(gestor_usuario.estado)
            {
                case .descargando:
                Image(systemName: "arrow.down.app.fill")
                    .font(.largeTitle)
                    .symbolEffect(.breathe)
                
                case .error_en_la_descarga:
                Text("Hubo un problema con la descarga")
                
                case .esperando:
                    if let usuario = gestor_usuario.usuario
                    {
                        Text("Usuario: \(usuario.nombre)")
                    }
                
            }
            
            
            
        }.onAppear{
            gestor_usuario.descargar_usuario(id: id)
        }
        
    }
}

#Preview {
        PantallaUsuario(id: 5)
}
