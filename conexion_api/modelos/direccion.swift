//
//  direccion.swift
//  conexion_api
//
//  Created by alumno on 3/23/26.
//

struct Direccion: Codable {
    let calle: String
    let suite: String
    let ciudad: String
    let codigoPostal: String

    
    enum CodingKeys: String, CodingKey {
        case calle = "street"
        case suite
        case ciudad = "city"
        case codigoPostal = "zipcode"
    }
}
