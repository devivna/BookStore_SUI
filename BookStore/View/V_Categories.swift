//
//  V_Categories.swift
//  BookStore
//
//  Created by Надія on 11.12.2022.
//

import SwiftUI

struct V_Categories: View {
    
    let isActive: Bool
    
    // ? add image to categories
    let categories = [
        "History", "Business", "Romance", "Advenute", "Fiction", "Science-fiction", "Motivation & Inspiration", "Science", "Health", "Education",
        "Psyhology", "Money & Investments", "Adventure"
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack(alignment: .top, spacing: 10) {
                
                        ForEach(categories, id: \.self) { category in
                            HStack {
                                Text("\(category)" .capitalized)
                                    .font(.system(size: 18))
                                    .fontWeight(.medium)
                                    .foregroundColor(isActive ? Color(hue: 0.14, saturation: 0.3, brightness: 0.5) : Color.gray)
                                    .padding(4)
                                    .background(Color("LightGray"))
                                    .clipShape(Capsule())
                                
                            }
                            
                        }
                        if isActive {
                            Color(hue: 0.14, saturation: 0.3, brightness: 0.5)
                                .frame(width: 20, height: 2)
                                .clipShape(Capsule())
                        }
//                    }
//                }
                
                VStack(alignment: .leading) {
                    Text("Trending now" .uppercased())
                    Text("Recommended" .uppercased())
                }
                .font(.title3)
                .foregroundColor(Color("DarkTeal"))
                
                
                
            }
            // .padding()
            .padding(.horizontal, 10)
            
            .navigationTitle("Categories")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct V_Categories_Previews: PreviewProvider {
    static var previews: some View {
        V_Categories(isActive: true)
    }
}

