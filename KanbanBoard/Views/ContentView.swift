import SwiftUI

struct ContentView: View {
    @EnvironmentObject var board: KanbanBoard

    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .top, spacing: 16) {
                ForEach($board.columns) { $column in
                    ColumnView(column: $column)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(KanbanBoard())
    }
}
