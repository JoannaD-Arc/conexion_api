//
//  controlador_usuario.swift
//  conexion_api
//
//  Created by alumno on 3/25/26.
//

import SwiftUI

enum EstadosBasicos{

    case descargando
    case error_en_la_descarga
    case esperando
}

@Observable
class ControladorUsuario{
    var estado: EstadosBasicos = .esperando
    var usuario: Usuario? = nil
    
    func descargar_usuario(id: Int){
        estado = .descargando
        
        Task{
            try await Task.sleep(for: .seconds(5))
            await _descargar_usuario(id: id)
        }
    }
    
    private func _descargar_usuario(id: Int) async {
        let url_del_usuario: String = "\(url_base)/users/\(id)"
        
        if let usuario_descargado: Usuario = await ServicioAPI.descargar_informacion(desde: url_del_usuario)
        {
            usuario = usuario_descargado
            estado  = .esperando
        }
        else{
            estado = .error_en_la_descarga
        }
    }
}
