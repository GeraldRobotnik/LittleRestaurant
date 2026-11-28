import SwiftUI
import Playgrounds

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Reserve a Table") {
                    ReservationForm()
                }
                NavigationLink("About Little Lemon") {
                    AboutView()
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}

#Preview {
            ContentView()
}
    
#Playground {
    _ = 1+2
}
