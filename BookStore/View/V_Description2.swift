//
//  V_Description2.swift
//  BookStore
//
//  Created by Надія on 12.12.2022.
//

import SwiftUI

struct V_Description2: View {
    
    @State var book: Book
    @EnvironmentObject var data: ModelData
    
    var body: some View {
        ZStack {
            Color("Beige1")
                .ignoresSafeArea()
            
            VStack {
                Image(book.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .shadow(radius: 10)
                
                
                SubDesciptionView(book: ModelData().booksMD[2])
                    .offset(y: 40)
            }
        }
    }
}

struct V_Description2_Previews: PreviewProvider {
    
    static var books = ModelData().booksMD
    
    static var previews: some View {
        V_Description2(book: books[2])
//        ListCateg(book: ModelData().books[1])
            .environmentObject(ModelData())
            .preferredColorScheme(.light)
    }
}


