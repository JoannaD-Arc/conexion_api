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
        
        ScrollView(.horizontal){
            VStack(alignment: .leading){
                ForEach(publicacion.comentarios ?? [Comentario]()){comentario in
                        Text("\(comentario.name)")
                        Text("\(comentario.body)")
                    }
            }
        }
    }
}
