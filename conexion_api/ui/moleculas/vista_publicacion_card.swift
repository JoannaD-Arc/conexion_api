//
//  vista_publicacion_card.swift
//

import SwiftUI

struct VistaPublicacionCard: View {
    
    var publicacion: Publicacion
    
    @State var gestor_usuario = ControladorUsuario()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12){
            
            HStack(spacing: 12){
                
                Image("Eda_Clawthorne")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                    .clipShape(Circle())
                
                
                VStack(alignment: .leading){
                    
                    switch(gestor_usuario.estado){
                        
                    case .descargando:
                        
                        Text("Cargando usuario...")
                            .font(.headline)
                            .foregroundStyle(.gray)
                        
                        
                    case .error_en_la_descarga:
                        
                        Text("Error al cargar usuario")
                            .font(.headline)
                            .foregroundStyle(.red)
                        
                        
                    case .esperando:
                        
                        if let usuario = gestor_usuario.usuario {
                            
                            Text(usuario.nombre)
                                .font(.headline)
                                .foregroundStyle(.babyBarnOwl)
                            
                            Text("@\(usuario.nombreUsuario)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                        
                    }
                    
                }
                
                Spacer()
                
            }
            
            
            Text(publicacion.title)
                .font(.title3)
                .fontDesign(.serif)
                .bold()
                .foregroundStyle(.babyBarnOwl)
            
            
            Text(publicacion.body)
                .font(.body)
                .foregroundStyle(.intrigue)
                .lineLimit(3)
            
            
            HStack{
                
                Image(systemName: "heart.fill")
                    .font(.title2)
                
                Image(systemName: "bubble.right.fill")
                    .font(.title2)
                
                Image(systemName: "square.and.arrow.up.fill")
                    .font(.title2)
                
                Spacer()
                
            }
            .foregroundStyle(.gray)
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.burntCrimson)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray.opacity(0.2))
        )
        .onAppear{
            
            gestor_usuario.descargar_usuario(
                id: publicacion.userId
            )
            
        }
        
    }
}

#Preview {
    
    VistaPublicacionCard(
        publicacion: Publicacion(
            userId: 1,
            id: 1,
            title: "Mi primera publicación",
            body: "Este es el contenido de prueba para visualizar la tarjeta."
        )
    )
    
}
