//
//  RegistroProyectoView.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

struct RegistroProyectoView: View {
    @ObservedObject var modelo: ModeloProyecto
    @Binding var mostrar: Bool
    @State private var titulo: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Título", text: $titulo)
                Button("Guardar") {
                    let nuevo = Proyecto(titulo: titulo, tareas: [])
                    modelo.proyectos.append(nuevo)
                    mostrar = false
                }
                .navigationTitle("Registro Proyecto")
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
