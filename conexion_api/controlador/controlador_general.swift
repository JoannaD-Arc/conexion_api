//
//  controlador_general.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//
import SwiftUI

@Observable
class ControladorGeneral{
    let url_base = "https://jsonplaceholder.typicode.com"
    
    public var estado: EstadosControladorGeneral
    
    public var publicaciones: [Publicacion] = []
    
    public var publicacion: Publicacion? = nil
    
    init(){
        estado = .descargando_datos
        
        descargar_publicaciones()
    }
    
    func descargar_publicacion(id: Int){
        estado = .descargando_datos
        
        Task{
            try await Task.sleep(for: .seconds(5))
            await _descargar_publicacion(id: String(id))
        }
    }
    
    private func _descargar_publicacion(id: String) async {
        let url = "\(url_base)/posts/\(id)"
        
        let publicacion: Publicacion? = await ServicioAPI.descargar_informacion(desde: url)
        // print(respuesta)
        if let publicacion = publicacion { // EN efecto pasamos a tener un objeto valido o descarga os bien las cosas
            self.publicacion = publicacion
            estado = .mostrarando_datos
        }
        else {
            estado = .error_en_descarga
        }
    }
    
    func descargar_publicaciones(){
        Task{
            try await Task.sleep(for: .seconds(5))
            await _descargar_publicaciones()
        }
    }
    
    private func _descargar_publicaciones() async {
        let url = url_base + "/posts"
        
        let respuesta: [Publicacion]? = await ServicioAPI.descargar_informacion(desde: url)
        // print(respuesta)
        if let respuesta = respuesta {
            publicaciones = respuesta
            estado = .mostrarando_datos
        }
        else {
            estado = .error_en_descarga
        }
    }
}

