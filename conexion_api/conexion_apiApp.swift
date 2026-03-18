//
//  conexion_apiApp.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//

import SwiftUI

@main
struct conexion_apiApp: App {
    @State var controlador_general = ControladorGeneral()
    
    var body: some Scene {
        WindowGroup {
            MenuBase()
                .environment(controlador_general)
        }
    }
}

#Preview{
    MenuBase()
        .environment(ControladorGeneral())
}
