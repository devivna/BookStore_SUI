
import SwiftUI

struct V_Search: View {
    
    @State private var search: String = ""
    let backgroundColor = Color.brown.opacity(0.2)
    
    var body: some View {
        
        NavigationView {

            ZStack {
                
                backgroundColor
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .padding(.trailing, 10)
                                .foregroundColor(.gray)
                            TextField("Search your Element", text: $search)
                        }
                        .padding()
                        .background(.white)
                        .cornerRadius(10)
                    }
                    .padding()
                
                    
                    
                    Spacer()
                }
                
            }
            
            
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}


struct V_Search_Previews: PreviewProvider {
    static var previews: some View {
        V_Search()
    }
}
