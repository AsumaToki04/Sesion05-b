//
//  ContentView.swift
//  Sesion05-b
//
//  Created by Asuma Toki on 11/26/24.
//

import SwiftUI

class ModeloProyecto: ObservableObject {
    @Published var proyectos: [Proyecto] = [] {
        didSet {
            guardarDatos()
        }
    }
    
    init() {
        cargarDatos()
    }
    
    private func archivoURL() -> URL {
        let documento = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        ).first!
        return documento.appendingPathExtension("proyectos.json")
    }
    
    private func guardarDatos() {
        do {
            let datos = try JSONEncoder().encode(proyectos)
            try datos.write(to: archivoURL())
        } catch {
            print("Error al guardar datos \(error)")
        }
    }
    
    private func cargarDatos() {
        do {
            let datos = try Data(contentsOf: archivoURL())
            proyectos = try JSONDecoder().decode([Proyecto].self, from: datos)
        } catch {
            print("Error al cargar datos \(error)")
        }
    }
}

struct ContentView: View {
    @StateObject private var modeloGlobal = ModeloProyecto()
    
    var body: some View {
        NavigationView {
            ListaProyectosView(modelo: modeloGlobal)
        }
    }
}
