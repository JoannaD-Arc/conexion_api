//
//  mini_vista_boton.swift
//  conexion_api
//
//  Created by Jose de la luz Olivares Gandara on 07/04/26.
//
import SwiftUI

struct BotonAdjunto: View {
    
    var icono: String
    
    var body: some View {
        
        Button {
            print(icono)
        } label: {
            
            Image(systemName: icono)
                .font(.title3)
                .bold()
                .foregroundStyle(Color.babyBarnOwl)
                .frame(width: 42, height: 42)
                .background(
                    Circle()
                        .fill(Color.burntCrimson.opacity(0.7))
                )
            
        }
        
    }
}
