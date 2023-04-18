//
//  BookStoreApp.swift
//  BookStore
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

@main
struct BookStoreApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
