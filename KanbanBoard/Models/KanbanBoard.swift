import SwiftUI

final class KanbanBoard: ObservableObject {
    @Published var columns: [KanbanColumn] = [
        KanbanColumn(title: "Todo"),
        KanbanColumn(title: "In Progress"),
        KanbanColumn(title: "Done")
    ]
}
