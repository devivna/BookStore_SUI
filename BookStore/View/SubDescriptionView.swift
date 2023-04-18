//
//  SubDescriptionView.swift
//  BookStore
//
//  Created by Надія on 12.12.2022.
//

import SwiftUI

struct SubDesciptionView: View {
    
    @State var book: Book
    @EnvironmentObject var data: ModelData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(book.name)
                .font(.system(size: 28, design: .serif))
                .fontWeight(.semibold)
                .padding(.horizontal, 20)
            
            HStack(spacing: 4) {
                ForEach(1..<5) { _ in
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                }
                Image(systemName: "star")
                    .font(.caption)
                    .foregroundColor(.yellow)
                
            }
            
            Text("Desciption")
                .font(.system(size: 18, design: .serif))
                .fontWeight(.semibold)
            //.foregroundColor(Color("DarkTeal"))
                .padding(.top, 20)
            
            Text(book.description)
                .font(.system(size: 18, design: .serif))
                .fontWeight(.light)
                .foregroundColor(Color.black.opacity(0.8))
            
            HStack (spacing: 40) {
                VStack (alignment: .leading) {
                    Text("Author: ")
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.semibold)
                    //.foregroundColor(Color("DarkTeal"))
                    
                        .padding(.top, 20)
                    
                    Text(book.author)
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.light)
                        .foregroundColor(Color.black.opacity(0.8))
                    
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Category: ")
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.semibold)
                    //.foregroundColor(Color("DarkTeal"))
                    
                        .padding(.top, 20)
                    
                    Text(book.kind .capitalized)
                        .font(.system(size: 18, design: .serif))
                        .fontWeight(.light)
                        .foregroundColor(Color.black.opacity(0.8))
                        .padding(.horizontal)
                        .padding(.vertical, 2)
                        .background(Color("Beige1"))
                        .clipShape(Capsule())
                }
                .padding(.top, 20)
                .padding(.trailing, 30)
                
            }
            
            HStack {
                
                VStack {
                    Image(systemName: "books.vertical.circle")
                    Text("Save")
                }
                
                VStack {
                    Image(systemName: "book.circle")
                    Text("Want to read/buy")
                }
                
                VStack {
                    Image(systemName: "heart.circle")
                    Text("Add to favorite")
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color("Button"))
            .clipShape(Capsule())
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color("LightGray"))
        .cornerRadius(40)
    }
}

struct SubDescriptionView_Previews: PreviewProvider {
    static var books = ModelData().booksMD

    static var previews: some View {
        SubDesciptionView(book: books[2])
            .environmentObject(ModelData())
    }
}
