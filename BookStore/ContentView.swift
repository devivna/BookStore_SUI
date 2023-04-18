//
//  ContentView.swift
//  BookStore
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        ZStack {
            Color("Beige")
                .ignoresSafeArea()

            V_Tab()
  
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
