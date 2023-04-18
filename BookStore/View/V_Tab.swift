
import SwiftUI

struct V_Reading_Now: View {
    
    @State var book: Book
    
    var body: some View {
        VStack {
            Text("Reading Now")
            Text(book.author)
        }
    }
}


struct V_Tab: View {
    
    @State var selectedTab = 3
    
    var body: some View {
        TabView(selection: $selectedTab) {
//            V_Reading_Now()
//                .tabItem {
//                    Label("Reading Now", systemImage: "book.circle")
//                }
//                .tag(1)

            V_Library()
                .tabItem {
                    Label("Library", systemImage: "books.vertical.circle")
                }
                .tag(2)
            
            V_Search()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass.circle")
                }
                .tag(3)
        }
        .tabViewStyle(.automatic)
        .tint(.gray)
    }
}


struct V_Tab_Previews: PreviewProvider {
    static var previews: some View {
        V_Tab()
    }
}
