//
//  Proyecto.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

struct Proyecto: Identifiable {
    let id: UUID
    let titulo: String
    var tareas: [Tarea]
    
    init(id: UUID = UUID(), titulo: String, tareas: [Tarea]) {
        self.id = id
        self.titulo = titulo
        self.tareas = tareas
    }
}
