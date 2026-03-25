//
//  vista_error.swift
//  conexion_api
//
//  Created by alumno on 3/25/26.
//

import SwiftUI

struct VistaErrorDescarga: View {
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.nulnOil)
            VStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(Color.burntCrimson)
                    .symbolEffect(.breathe)
                
                Text("Ocurrió un error inesperado.")
                    .fontDesign(.serif)
                    .font(.headline)
                    .foregroundStyle(Color.burntCrimson)
                    .padding(2)
            }
        }

    }
}
#Preview {
    VistaErrorDescarga()
}

