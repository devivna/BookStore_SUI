//
//  V_TopBar.swift
//  BookStore
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct V_TopBar: View {
    var body: some View {
        ScrollView {
            HStack {
                Button {
                    //
                } label: {
                    Image(systemName: "doc.plaintext")
                        .font(.title)
                        .padding(3)
                        .background(.white)
                        .cornerRadius(10)
                }
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "person.fill")
                        .font(.title)
                        .padding(3)
                        .padding(.top, 2)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
            .accentColor(.gray)
            .padding(.horizontal)
            
            VStack {
                Text("Find The \nBest ")
                    .font(.system(.largeTitle, design: .serif, weight: .regular))
                    .foregroundColor(Color(hue: 0.14, saturation: 0.3, brightness: 0.5))
                    .kerning(-1)
                + Text("Book!")
                    .font(.system(.largeTitle, design: .serif, weight: .semibold))
                    .foregroundColor(Color(hue: 0.14, saturation: 0.3, brightness: 0.5))
            }
            .padding()
        }
    }
}

struct V_TopBar_Previews: PreviewProvider {
    static var previews: some View {
        V_TopBar()
    }
}
