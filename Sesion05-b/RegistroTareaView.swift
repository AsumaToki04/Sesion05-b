//
//  RegistroTareaView.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

struct RegistroTareaView: View {
    var proyecto: Proyecto
    @ObservedObject var modelo: ModeloProyecto
    @Binding var mostrar: Bool
    @State private var titulo: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Título", text: $titulo)
                Button("Guardar") {
                    if let index = modelo.proyectos.firstIndex(where: {
                        $0.id == proyecto.id
                    }) {
                        let nuevo = Tarea(titulo: titulo)
                        modelo.proyectos[index].tareas.append(nuevo)
                    }
                    mostrar = false
                }
                .navigationTitle("Registro Tarea")
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancelar") {
                            mostrar = false
                        }
                    }
                }
            }
        }
    }
}
