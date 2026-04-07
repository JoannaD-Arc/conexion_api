//
//  configuracion.swift
//  conexion_api
//
//  Created by Jose de la luz Olivares Gandara on 06/04/26.
//

import SwiftUI

struct PantallaConfiguracion: View {
    var body: some View{
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.nulnOil)
            
            VStack{
                HStack{
                    Text("Configuración")
                        .font(Font.largeTitle.bold())
                        .foregroundStyle(Color.babyBarnOwl)
                        .fontDesign(.serif)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.babyBarnOwl)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 25, height: 25)

                        TextField("Buscar una configuración...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .background(Color.babyBarnOwl)
                            .foregroundStyle(Color.nulnOil)
                        

                    }
                    .foregroundStyle(Color.nulnOil)
                    .padding(10)


                }
                .frame(height: 50)

                
                ScrollView(.vertical){
                    MiniVistaConfiguracion(
                        icono: "person.crop.circle",
                        nombre: "Mi Cuenta",
                        descripcion: "Ver información de la cuenta, como nombre de usuario y más."
                    )
                    MiniVistaConfiguracion(
                        icono: "lock.circle.fill",
                        nombre: "Seguridad y Acceso",
                        descripcion: "Configuración de acceso a tu cuenta y tus dispositivos."
                    )
                    MiniVistaConfiguracion(
                        icono: "lock.heart.fill",
                        nombre: "Privacidad",
                        descripcion: "Ajustes de privacidad para tus datos, ajuste de feed de inicio y más."
                    )
                    MiniVistaConfiguracion(
                        icono: "bell.fill",
                        nombre: "Notificaciones",
                        descripcion: "Configura tus notificaciones y como se muestran."
                    )
                    MiniVistaConfiguracion(
                        icono: "accessibility.fill",
                        nombre: "Accessibilidad",
                        descripcion: "Ajustes de accesibilidad disponibles para Penstagram."
                    )
                    MiniVistaConfiguracion(
                        icono: "book.pages.fill",
                        nombre: "Acerca de",
                        descripcion: "Conoce los términos de uso y política de privacidad de Penstagram"
                    )
                    MiniVistaConfiguracion(
                        icono: "power.circle.fill",
                        nombre: "Cerrar sesión",
                        descripcion: "Cerrar sesión de usuario actual en Penstagram."
                    )
                }
            }
            .padding(20)
        }
        
    }
}

#Preview {
    PantallaConfiguracion()
        .environment(ControladorGeneral())
}
