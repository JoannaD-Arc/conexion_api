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
        
        Text("\(publicacion.title)")
            .font(.title)
            .bold()
            .fontDesign(.serif)
            .foregroundStyle(Color.babyBarnOwl)
        
        
        VStack{
            if let usuario = publicacion.usuario{
                NavigationLink{
                    PantallaUsuario(id: usuario.id)
                }label: {
                    MiniVistaUsuario(usuario: usuario)
                        .font(.subheadline)
                        .padding(2)
                        .fontDesign(.serif)
                        .foregroundStyle(Color.babyBarnOwl)
                }
            }
            else{
                VistaErrorDescarga()
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
    NavigationStack{
        PantallaPublicacion(id: 3)
            .environment(ControladorGeneral())
    }
}
