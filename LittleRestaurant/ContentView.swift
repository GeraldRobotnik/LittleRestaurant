import SwiftUI
import Playgrounds

struct ContentView: View {
    private let olive = Color(red: 0.16, green: 0.24, blue: 0.19)
    private let parchment = Color(red: 0.98, green: 0.96, blue: 0.91)

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    Image("LittleLemonLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 260)
                        .accessibilityLabel("Little Lemon")

                    VStack(spacing: 0) {
                        Image("LittleLemonDinner")
                            .resizable()
                            .scaledToFit()
                            .accessibilityLabel("Diners sharing a meal around a wooden table")

                        Text("EAT\nSLEEP\nLEMON")
                            .font(.system(.title, design: .monospaced, weight: .black))
                            .tracking(6)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .foregroundStyle(parchment)
                            .background(olive)
                            .accessibilityLabel("Eat, sleep, lemon")
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                    VStack(spacing: 14) {
                        Text("Seasonal Mediterranean cooking")
                            .font(.system(.largeTitle, design: .serif))
                            .accessibilityAddTraits(.isHeader)

                        Text("Family recipes, fresh herbs, and a squeeze of lemon.")
                            .font(.body)
                    }
                    .multilineTextAlignment(.center)

                    VStack(spacing: 16) {
                        NavigationLink {
                            ReservationForm()
                        } label: {
                            Text("Reserve a Table")
                                .font(.headline)
                                .frame(maxWidth: .infinity, minHeight: 44)
                                .padding(.vertical, 5)
                                .foregroundStyle(.white)
                                .background(olive, in: RoundedRectangle(cornerRadius: 8))
                        }
                        .buttonStyle(.plain)

                        NavigationLink("About Little Lemon") {
                            AboutView()
                        }
                        .font(.subheadline.weight(.semibold))
                        .padding(.vertical, 12)
                    }
                }
                .foregroundStyle(olive)
                .tint(olive)
                .frame(maxWidth: 420)
                .padding(.horizontal, 28)
                .padding(.vertical, 32)
                .frame(maxWidth: .infinity)
            }
            .background(parchment.ignoresSafeArea())
        }
    }
}

#Preview {
    ContentView()
}
    
#Playground {
    _ = 1+2
}
