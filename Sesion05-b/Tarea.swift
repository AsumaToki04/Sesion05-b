//
//  Tarea.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

struct Tarea: Identifiable {
    let id: UUID
    let titulo: String
    
    init(id: UUID = UUID(), titulo: String) {
        self.id = id
        self.titulo = titulo
    }
}
