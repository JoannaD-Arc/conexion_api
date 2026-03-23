//
//  usuario.swift
//  conexion_api
//
//  Created by alumno on 3/23/26.
//

import Foundation

struct Usuario: Codable, Identifiable {
    let id: Int
    let nombre: String
    let nombreUsuario: String
    let correo: String
    let direccion: Direccion
    let telefono: String
    let sitioWeb: String
    let empresa: Empresa
    
    enum CodingKeys: String, CodingKey {
        case id
        case nombre = "name"
        case nombreUsuario = "username"
        case correo = "email"
        case direccion = "address"
        case telefono = "phone"
        case sitioWeb = "website"
        case empresa = "company"
    }
}
