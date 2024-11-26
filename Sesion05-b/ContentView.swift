//
//  ContentView.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

class ModeloProyecto: ObservableObject {
    @Published var proyectos: [Proyecto] = [
        Proyecto(titulo: "Proyecto 1", tareas: [
            Tarea(titulo: "Tarea 1"),
            Tarea(titulo: "Tarea 2")
        ]),
        Proyecto(titulo: "Proyecto 2", tareas: [
            Tarea(titulo: "Tarea 1"),
            Tarea(titulo: "Tarea 2"),
            Tarea(titulo: "Tarea 3")
        ])
    ]
}

struct ContentView: View {
    @StateObject private var modeloGlobal = ModeloProyecto()
    
    var body: some View {
        NavigationView {
            
        }
    }
}
