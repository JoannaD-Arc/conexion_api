//
//  vista_descargando_datos.swift
//  conexion_api
//
//  Created by alumno on 3/20/26.
//

import SwiftUI

struct VistaDescargandoDatos: View {
    var body: some View {
        VStack {
            ZStack{
                HStack(spacing: -20){
                    Image(systemName: "line.diagonal")
                        .font(.largeTitle)
                        .rotationEffect(Angle(degrees: -22.5))
                        
                    
                    Image(systemName: "line.diagonal")
                        .font(.largeTitle)
                        .rotationEffect(Angle(degrees: 290))
                }
                
                VStack(alignment: .center, spacing: -30){
                    Image(systemName: "line.diagonal")
                        .font(.largeTitle)
                        .rotationEffect(Angle(degrees: 45))
                        
                    Spacer()
                    Image(systemName: "line.diagonal")
                        .font(.largeTitle)
                        .rotationEffect(Angle(degrees: 290))
                }
            }

            Text("Descargando datos...")
                .font(.headline)
                .foregroundColor(.primary)
                .padding(2)
        }
    }
}


#Preview {
    VistaDescargandoDatos()
}
