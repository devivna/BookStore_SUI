//
//  V_Description.swift
//  BookStore
//
//  Created by Надія on 12.12.2022.
//

import SwiftUI

struct V_Description: View {
    
    @State var categories = [
    "science", "adventure"
    ]
    
    var name: String = ""
    
    var body: some View {
        VStack(spacing: 15) {
            Image("Book1")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 250)
                .shadow(radius: 20)
                .padding(.bottom, 20)
            
            HStack(alignment: .center) {
                ForEach(categories, id: \.self) { kind in
                    Text(kind)
                        .font(.title3)
                        .fontWeight(.light)
                        .padding(2)
                        .padding(.horizontal)
                        .background(.brown.opacity(0.2))
                        .clipShape(Capsule())
                    
                }
            }
            
            Text("Sherlock Holmes")
                .font(.system(size: 24, design: .serif))
            
            HStack(alignment: .center) {
                ForEach(1..<4) { _ in
                    Image(systemName: "star.fill")
                            .font(.callout)
                            .foregroundColor(.yellow)
                            .shadow(radius: 1)
                }
            }
            .padding(.bottom, 40)
            
            HStack(alignment: .top) {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Introduction")
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.semibold)
                    
                    Text("Life is like a box of chocolate. You never now what is inside. Life is like a box of chocolate. You never now what is inside.")
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.light)
                    
                    Spacer()
                    
                }
                .padding()
                .padding(.leading, 10)
                .frame(width: 200)
                
                VStack(alignment: .leading, spacing: 1) {
                    Text("Author:")
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.semibold)
                    Text("Arthur C. Doel")
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.light)
                }
                .padding()
                .padding(.leading, 10)
                .frame(width: 200)
                
                
                 Spacer()
            }
            
            Text("Read Now")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 70)
                .background(
                    Color("Button"))
                .clipShape(Capsule())
                .shadow(radius: 15)
            
            
            Spacer()
        }
        .padding(.top, 20)
    }
}

struct V_Description_Previews: PreviewProvider {
    static var previews: some View {
        V_Description()
    }
}
