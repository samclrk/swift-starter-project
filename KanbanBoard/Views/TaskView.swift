import SwiftUI

struct TaskView: View {
    var task: KanbanTask

    var body: some View {
        Text(task.title)
            .padding(8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(RoundedRectangle(cornerRadius: 6).fill(Color(NSColor.controlBackgroundColor)))
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: KanbanTask(title: "Sample"))
    }
}
