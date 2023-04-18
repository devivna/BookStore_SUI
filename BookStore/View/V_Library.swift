
import SwiftUI

struct V_Library: View {
    
    @State var collections = [
    "MyFavorite", "Want to read", "Reading Now"
    ]
    
    var body: some View {
        
        NavigationView {
           
            List {
                ForEach(collections, id: \.self) { item in
                    Text(item)
                }
                .onMove(perform: moveItem)
                .onDelete(perform: deleteItem)
            }
            .navigationTitle("Collections")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                Button(action: {
               addItem(newItem: "Fix this")
            }, label: {
                Image(systemName: "plus")
            })
            )
        }
    }
    
    //
    func addItem(newItem: String) {
        collections.append(newItem)
    }
    
    func moveItem(index: IndexSet, int: Int) {
        collections.move(fromOffsets: index, toOffset: int)
    }
    
    func deleteItem(index: IndexSet) {
        collections.remove(atOffsets: index)
    }
}

struct V_Library_Previews: PreviewProvider {
    static var previews: some View {
        V_Library()
    }
}
