import Foundation

struct KanbanColumn: Identifiable {
    var id = UUID()
    var title: String
    var tasks: [KanbanTask] = []
}
