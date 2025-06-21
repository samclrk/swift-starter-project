import SwiftUI

struct ColumnView: View {
    @Binding var column: KanbanColumn
    @State private var newTaskTitle: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(column.title)
                .font(.headline)
            ForEach(column.tasks) { task in
                TaskView(task: task)
            }
            TextField("New task", text: $newTaskTitle, onCommit: addTask)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .frame(width: 200)
        .padding()
        .background(RoundedRectangle(cornerRadius: 8).fill(Color(NSColor.windowBackgroundColor)))
    }

    private func addTask() {
        let trimmed = newTaskTitle.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }
        column.tasks.append(KanbanTask(title: trimmed))
        newTaskTitle = ""
    }
}

struct ColumnView_Previews: PreviewProvider {
    static var previews: some View {
        ColumnView(column: .constant(KanbanColumn(title: "Todo")))
    }
}
