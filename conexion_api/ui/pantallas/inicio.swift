//
//  inicio.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//
import SwiftUI


struct Inicio: View {
    @Environment(ControladorGeneral.self) var controlador
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(.nulnOil)
            
            VStack{
                Text("Penstagram")
                    .foregroundStyle(Color.burntCrimson)
                    .fontDesign(.serif)
                    .bold()
                    .font(.largeTitle)
                
                NavigationStack{
                    switch(controlador.estado){
                    case .descargando_publicaciones:
                            VistaDescargandoDatos()
                        
                    case .en_espera:
                        
                        ScrollView{
                            LazyVStack(spacing: 16){
                                
                                ForEach(controlador.publicaciones){ publicacion in
                                    
                                    NavigationLink{
                                        PantallaPublicacion(id: publicacion.id)
                                    } label: {
                                        
                                        VistaPublicacionCard(publicacion: publicacion)
                                        
                                    }
                                    
                                }
                                
                            }
                            .padding()
                        }
                        .background(Color.nulnOil)
                        
                    case .descargando_publicacion:
                        Text("")
                        
                    case .error_en_descarga:
                        VistaErrorDescarga()
                    }
                }
                .onAppear{
                    controlador.descargar_publicaciones()
                }
            }
        }
    }
}

#Preview {
    Inicio()
        .environment(ControladorGeneral())
}
