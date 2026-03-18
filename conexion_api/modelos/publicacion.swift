//
//  publicacion.swift
//  conexion_api
//
//  Created by Jadzia Gallegos on 13/03/26.
//

/// Existen tres tipos de protocolos para convertir la informacion de JSON a datos validos para Swift
/// DEcodable: Transformar de JSON a Swift
/// Encodable: Transformar de Swift a JSON
/// Codable: Todas las anteriores

struct Publicacion: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    var comentarios: [Comentario]?
}
