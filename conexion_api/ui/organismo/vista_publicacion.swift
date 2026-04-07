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
        ScrollView(.vertical){
            VStack(alignment: .leading){
                ForEach(publicacion.comentarios ?? [Comentario]()){comentario in
                        VistaComentario(comentario: comentario)
                    }
            }
            
        }
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.babyBarnOwl)
            HStack{
                TextField("Escribe un comentario...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .background(Color.babyBarnOwl)
                    .foregroundStyle(Color.nulnOil)
                
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 25, height: 25)
                Image(systemName: "paperclip.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                Image(systemName: "face.smiling")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            .foregroundStyle(Color.nulnOil)
            .padding(10)


        }
        .frame(height: 50)
        
    }
}

#Preview {
    NavigationStack{
        PantallaPublicacion(id: 3)
            .environment(ControladorGeneral())
    }
}
