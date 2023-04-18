//
//  V_BookShelf.swift
//  BookStore
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct V_BookShelf: View {
    var nameAuthor: String
    var nameBook: String
    var image: Image
    
    var body: some View {
        VStack {
            
            image
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 90)
                .foregroundColor(.brown.opacity(0.7))
                .padding()
            //.padding(.vertical, 10)
            
            
            VStack {
                HStack(spacing: 2) {
                    ForEach(0 ..< 5) { item in
                        Image(systemName: "star")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 13, height: 13)
                            .foregroundColor(.yellow)
                            .padding(.bottom, 3)
                    }
                    
                    
                }
                
                Text(nameAuthor)
                    .font(.system(.caption2, design: .serif, weight: .light))
                Text("\"\(nameBook)\"")
                    .font(.system(.caption, design: .serif, weight: .thin))
                    .shadow(radius: 1)
                
            }
        }
        .padding()
        .frame(width: 150)
        .background(.white)
        .cornerRadius(10)
        
        .overlay (
            Image(systemName: "bookmark")
                .foregroundColor(.black)
                .padding(4)
                .background(
                    Circle()
                        .foregroundColor(.green.opacity(0.3))
                )
            
            , alignment: .topTrailing
        )
        .padding(.horizontal)
    }
}

