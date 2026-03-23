//
//  empresa.swift
//  conexion_api
//
//  Created by alumno on 3/23/26.
//

struct Empresa: Codable {
    let nombre: String
    let frase: String
    let negocio: String
    
    enum CodingKeys: String, CodingKey {
        case nombre = "name"
        case frase = "catchPhrase"
        case negocio = "bs"
    }
}
