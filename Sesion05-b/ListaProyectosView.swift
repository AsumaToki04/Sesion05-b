//
//  ListaProyectosView.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

struct ListaProyectosView: View {
    @ObservedObject var modelo: ModeloProyecto
    @State private var mostrarRegistro = false
    
    var body: some View {
        VStack {
            List {
                ForEach(modelo.proyectos) { item in
                    Text(item.titulo)
                }
            }
        }
        .navigationTitle("Proyectos")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    mostrarRegistro = true
                }) {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $mostrarRegistro) {
            RegistroProyectoView(modelo: modelo, mostrar: $mostrarRegistro)
        }
    }
}
