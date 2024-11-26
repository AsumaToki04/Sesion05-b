//
//  ListaTareasView.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

struct ListaTareasView: View {
    var proyecto: Proyecto
    
    var body: some View {
        VStack {
            List {
                ForEach(proyecto.tareas) { item in
                    Text(item.titulo)
                }
            }
            .navigationTitle("Tareas")
        }
    }
}
