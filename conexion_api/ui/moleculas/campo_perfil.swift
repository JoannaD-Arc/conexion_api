//
//  campo_perfil.swift
//  conexion_api
//
//  Created by Jose de la luz Olivares Gandara on 07/04/26.
//

import SwiftUI

struct CampoPerfil: View {
    
    var icono: String
    var titulo: String
    var valor: String
    
    var body: some View {
        
        HStack(spacing: 14){
            
            Image(systemName: icono)
                .frame(width: 24)
                .foregroundStyle(.intrigue)
            
            
            VStack(alignment: .leading, spacing: 2){
                
                Text(titulo)
                    .font(.caption)
                    .foregroundStyle(.gray)
                
                Text(valor)
                    .font(.body)
                    .foregroundStyle(.babyBarnOwl)
                
            }
            
            Spacer()
            
        }
        .padding(10)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .foregroundStyle(Color.nulnOil.opacity(0.65))
        )
        
    }
}
