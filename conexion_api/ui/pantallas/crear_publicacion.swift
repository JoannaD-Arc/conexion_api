//
//  crear_publicacion.swift
//  conexion_api
//

import SwiftUI

struct PantallaCrearPublicacion: View {
    
    var id: Int
    
    @State private var texto: String = ""
    let limiteCaracteres = 150
    var placeholder: String = "¿Qué tienes en mente?"
    
    @State var gestor_usuario = ControladorUsuario()
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.nulnOil)
            
            
            VStack{
                
                switch(gestor_usuario.estado)
                {
                    
                case .descargando:
                    VistaDescargandoDatos()
                    
                    
                case .error_en_la_descarga:
                    VistaErrorDescarga()
                    
                    
                case .esperando:
                    
                    if let usuario = gestor_usuario.usuario {
                        
                        VStack {
                            
                            HStack{
                                
                                Spacer()
                                
                                Text("Nueva Publicación")
                                    .fontDesign(.serif)
                                    .font(.title.bold())
                                    .foregroundStyle(.intrigue)
                                
                                Spacer()
                                
                                Image(systemName: "rectangle.and.pencil.and.ellipsis.rtl")
                                    .font(.title2.bold())
                                    .foregroundStyle(.intrigue)
                            }
                            .padding(15)
                            .overlay(
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundStyle(Color.gray.opacity(0.4)),
                                alignment: .bottom
                            )
                            
                            
                            HStack{
                                
                                Image("Eda_Clawthorne")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 75)
                                
                                
                                ZStack{
                                    
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundStyle(.burntCrimson)
                                        .frame(width: 250, height: 75)
                                    
                                    
                                    VStack {
                                        
                                        Text(usuario.nombre)
                                            .font(.title3)
                                            .foregroundStyle(.babyBarnOwl)
                                            .bold()
                                            .fontDesign(.serif)
                                        
                                        Text("@\(usuario.nombreUsuario)")
                                            .font(.caption)
                                            .foregroundStyle(.babyBarnOwl.opacity(0.8))
                                        
                                    }
                                    
                                }
                                
                            }
                            .padding()
                            
                            ZStack(alignment: .topLeading) {
                                
                                        TextEditor(text: $texto)
                                            .foregroundStyle(Color.sealBrown)
                                            .fontDesign(.serif)
                                            .padding(8)
                                            .frame(height: 300)
                                            .background(
                                                RoundedRectangle(cornerRadius: 16)
                                                    .fill(Color.babyBarnOwl.opacity(0.6))
                                            )
                                            .onChange(of: texto) { _, nuevoValor in
                                                if nuevoValor.count > limiteCaracteres {
                                                    texto = String(nuevoValor.prefix(limiteCaracteres))
                                                }
                                            }
                                            .scrollContentBackground(.hidden)

                                        if texto == "" {
                                            Text(placeholder)
                                                .foregroundStyle(Color.intrigue)
                                                .fontDesign(.serif)
                                                .padding(.horizontal, 12)
                                                .padding(.vertical, 14)
                                        }
                                        

                                    }
                                    .padding(10)
                            
                                    HStack {
                                        
                                        Spacer()
                                        
                                        Text("\(texto.count)/\(limiteCaracteres)")
                                            .font(.caption)
                                            .bold()
                                            .fontDesign(.serif)
                                            .foregroundStyle(
                                                texto.count >= limiteCaracteres
                                                ? Color.red
                                                : Color.intrigue.opacity(0.7)
                                            )
                                        
                                    }
                                    .padding(.horizontal, 15)
                                    .padding(.bottom, 5)
                            
                                
                            VStack{
                                
                                HStack(spacing: 14) {
                                    BotonAdjunto(icono: "photo")
                                    BotonAdjunto(icono: "video")
                                    BotonAdjunto(icono: "paperclip")
                                    BotonAdjunto(icono: "location")
                                    BotonAdjunto(icono: "face.smiling")
                                    BotonAdjunto(icono: "chart.bar")
                                }.padding()
                                
                                Button {
                                    print("Publicar presionado")
                                } label: {
                                    
                                    Text("Publicar")
                                        .font(.headline)
                                        .fontDesign(.serif)
                                        .foregroundStyle(.babyBarnOwl)
                                        .padding(.horizontal, 50)
                                        .padding(.vertical, 10)
                                        .background(
                                            Capsule()
                                                .fill(Color.burntCrimson)
                                        )
                                    
                                }
                                
                                Spacer()
                                
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        .onAppear{
            gestor_usuario.descargar_usuario(id: id)
        }
        
    }
}

#Preview {
    PantallaCrearPublicacion(id: 4)
}
