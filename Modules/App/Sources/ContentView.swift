import SwiftUI
import Domain
import Infrastructure
import Feature

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Tuist Module!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
