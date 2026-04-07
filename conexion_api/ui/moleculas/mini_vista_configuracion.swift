//
//  mini_vista_configuracion.swift
//  conexion_api
//
//  Created by Jose de la luz Olivares Gandara on 07/04/26.
//

import SwiftUI

struct MiniVistaConfiguracion: View {
    
    var icono: String
    var nombre: String
    var descripcion: String
    
    var body: some View {
        HStack(alignment: .center) {
            
            VStack(alignment: .leading) {
                Image(systemName: icono)
                    .foregroundStyle(Color.babyBarnOwl)
                    .font(.title)
            }
            Spacer()
            VStack(alignment: .leading) {
                Text(nombre)
                    .foregroundStyle(Color.babyBarnOwl)
                    .bold()
                    .fontDesign(.serif)
                    .font(.title)
                
                Text(descripcion)
                    .font(.subheadline)
                    .fontDesign(.serif)
                    .foregroundColor(.gray)
            }
            
            Spacer() // Empuja todo hacia leading
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading) // Fuerza alineación a la izquierda
        .background(Color.burntCrimson)
        .cornerRadius(10)
    }
}

#Preview {
    MiniVistaConfiguracion(
        icono: "wifi",
        nombre: "Wi-Fi",
        descripcion: "Configurar red inalámbrica"
    )
}
