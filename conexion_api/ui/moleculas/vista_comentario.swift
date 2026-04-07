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
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(Color.burntCrimson)
                
                HStack{
                    VStack(alignment: .leading){
                        Image("Eda_Clawthorne")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width:50)
                        
                        Spacer()
                    }
                    VStack(alignment: .leading){
                        Text("\(comentario.name)")
                            .font(.subheadline)
                            .bold()
                            .foregroundStyle(Color.babyBarnOwl)
                        Text("\(comentario.body)")
                        
                    }
                }
                .padding(20)
                
            }
            .scaledToFit()
            
        }
        
    }
}
#Preview {
        NavigationStack{
            PantallaPublicacion(id: 3)
                .environment(ControladorGeneral())
        }
    }
