
import SwiftUI

//struct

struct V_Choose: View {
    
    @State var book: Book
    @EnvironmentObject var modelData: ModelData
        
    @State var isActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.brown.opacity(0.2)
                    .ignoresSafeArea()
                
                TabView {
                    ForEach(modelData.booksMD, id: \.self) { book in
                        Image(book.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 230, height: 338)
                            .background(.gray.opacity(0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)
                            .padding(.bottom, 45)
                        
                            .overlay(
                                Image(systemName: "checkmark.rectangle")
                                    .font(.largeTitle)
                                    .foregroundColor(isActive ? .green : .gray)
                                , alignment: .bottomTrailing)
                        
                            .overlay(
                                Image(systemName: "xmark.rectangle")
                                    .font(.largeTitle)
                                    .foregroundColor(isActive ? .red : .gray)
                                , alignment: .bottomLeading)
                        
                        //                                .overlay(
                        //                                    ForEach(booksName, id: \.self) { name in
                        //                                        Text(name)
                        //                                            .font(.system(size: 24, design: .serif))
                        //                                            .foregroundColor(.black)
                        //                                    }
                        //                                    , alignment: .bottom)
                        
                    }
                }
                .padding()
                .padding(.horizontal)
                .frame(width: 320, height: 500)
                .background(.white)
                .cornerRadius(10)
                //.padding(.horizontal, 20)
                .tabViewStyle(.page)
                
                
            }
            .navigationTitle("Choose your book")
            .environmentObject(modelData)
        }
    }
}

struct V_Choose_Previews: PreviewProvider {
    static var previews: some View {
        V_Choose(book: ModelData().booksMD[1])
            .environmentObject(ModelData())
    }
}
