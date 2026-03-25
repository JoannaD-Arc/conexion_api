//
//  vista_comentario.swift
//  conexion_api
//
//  Created by alumno on 3/23/26.
//

import SwiftUI

struct VistaComentario: View {
    var comentario: Comentario
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 100)
                .foregroundStyle(Color.burntCrimson)
            
                Text("\(comentario.name)")
                    .font(.subheadline)
                    .foregroundStyle(Color.babyBarnOwl)
                Text("\(comentario.body)")
            }
        .frame(height: 50)
        .padding()
    }
        
}

#Preview {
    NavigationStack{
        PantallaPublicacion(id: 3)
            .environment(ControladorGeneral())
    }
}
