
import SwiftUI

//struct BookList: View {
//
//    var body: some View {
//
//        VStack {
//            ListCateg(category: "Adventure")
//            ListCateg(category: "Adventure")
//        }
//    }
//}

struct ListCateg: View {

    @State var book: Book
    @EnvironmentObject var modelData: ModelData

    let rows = [
        GridItem(.fixed(30))
    ]
    
    let category: String = "Adventure"
    
    var body: some View {
        ScrollView(.horizontal) {
            VStack {
                LazyHGrid(rows: rows) {
                    Text(book.kind .uppercased())
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                LazyHGrid(rows: rows) {
                ForEach(modelData.booksMD, id: \.self) { book in
                    NavigationLink {
                        V_Reading_Now(book: book)
                    } label: {
                          Image(book.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 170)
                    }
                }
                }
                
//                LazyHGrid(rows: rows) {
//                    ForEach(modelData.books, id: \.self) { book in
//                        Image(book.image)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 120, height: 170)
//                    }
//                }
            }
        }
    }
}
struct ListCateg_Previews: PreviewProvider {
    static var books = ModelData().booksMD
    
    static var previews: some View {
        ListCateg(book: books[2])
//        ListCateg(book: ModelData().books[1])
            .environmentObject(ModelData())
    }
}
