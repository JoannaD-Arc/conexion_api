//
//  vista_perfil_usuario.swift
//  conexion_api
//
//  Created by Jose de la luz Olivares Gandara on 07/04/26.
//


import SwiftUI

struct VistaPerfilUsuario: View {
    
    var usuario: Usuario
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.nulnOil)
            
            
            VStack(spacing: 0){
                
                // HEADER
                
                HStack{
                    
                    Spacer()
                    
                    Text("Perfil de Usuario")
                        .fontDesign(.serif)
                        .font(.title.bold())
                        .foregroundStyle(.intrigue)
                    
                    Spacer()
                    
                    Image(systemName: "pencil")
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
                
                
                ScrollView {
                    
                    VStack(spacing: 20){
                        
                       
                        
                        VStack(spacing: 12){
                            
                            Image("Eda_Clawthorne")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .foregroundStyle(.gray)
                            
                            
                            Text(usuario.nombre)
                                .font(.title)
                                .bold()
                                .fontDesign(.serif)
                                .foregroundStyle(.babyBarnOwl)
                            
                            
                            Text("@\(usuario.nombreUsuario)")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            
                        }
                        .padding(.top, 20)
                        
                        VStack(spacing: 12){
                            
                            CampoPerfil(
                                icono: "envelope.fill",
                                titulo: "Correo",
                                valor: usuario.correo
                            )
                            
                            CampoPerfil(
                                icono: "phone.fill",
                                titulo: "Teléfono",
                                valor: usuario.telefono
                            )
                            
                            CampoPerfil(
                                icono: "globe",
                                titulo: "Sitio Web",
                                valor: usuario.sitioWeb
                            )
                            
                            CampoPerfil(
                                icono: "building.2.fill",
                                titulo: "Empresa",
                                valor: usuario.empresa.nombre
                            )
                            
                            CampoPerfil(
                                icono: "location.fill",
                                titulo: "Dirección",
                                valor:
                                "\(usuario.direccion.calle), \(usuario.direccion.ciudad)"
                            )
                            
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundStyle(.burntCrimson)
                               
                        )
                        .padding(.horizontal)
                        
                        
                        Spacer()
                        
                    }
                    
                }
                
            }
            
        }
        
    }
}

#Preview {
    PantallaUsuario(id: 5)
        .environment(ControladorGeneral())
}
