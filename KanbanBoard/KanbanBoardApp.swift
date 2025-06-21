import SwiftUI

@main
struct KanbanBoardApp: App {
    @StateObject private var board = KanbanBoard()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(board)
        }
    }
}
