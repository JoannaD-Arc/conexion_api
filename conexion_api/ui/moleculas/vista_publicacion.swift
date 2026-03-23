//
//  vista_publicacion.swift
//  conexion_api
//
//  Created by alumno on 3/20/26.
//

import SwiftUI


struct VistaPublicacion: View {
    var publicacion: Publicacion
    
    var body: some View {
        
        Text("Publicacion: \(publicacion.title)")
        VStack{
            if let usuario = publicacion.usuario{
                MiniVistaUsuario(usuario: usuario)
            }
            else{
                Text("Error")
            }
           
        }
        ScrollView(.horizontal){
            VStack(alignment: .leading){
                ForEach(publicacion.comentarios ?? [Comentario]()){comentario in
                        VistaComentario(comentario: comentario)
                    }
            }
        }
    }
}

#Preview {
    PantallaPublicacion(id: 3)
        .environment(ControladorGeneral())
}
