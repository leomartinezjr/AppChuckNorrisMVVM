//
//  AppChuckNorrisMVVMApp.swift
//  AppChuckNorrisMVVM
//
//  Created by Leonardo Paez on 12/05/21.
//

import SwiftUI

@main
struct AppChuckNorrisMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ChuckViewModel(chuckservice: ChuckService()))
        }
    }
}
