//
//  ReservationForm.swift
//  LittleRestaurant
//
//  Created by Mark Basaldua on 11/25/26.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var children = 0
    @State private var occasion = ""

    var body: some View {
        Form {
            Section {
                VStack(alignment: .leading, spacing: 8) {
                    Image("LittleLemonLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 200)
                        .accessibilityLabel("Little Lemon")

                    Text("Reservation form")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.vertical, 8)
            }

            Section("Reservation Details") {
                TextField("Name", text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)

                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                if guestCount >= 8 {
                    Text("Large group — please call ahead.")
                }

                Stepper("Children: \(children)", value: $children, in: 0...5)
                if children > 0 {
                    Text("High chairs are available on request.")
                }

                TextField("Occasion (Birthday, Anniversary, etc.)", text: $occasion)
            }

            Section("Reservation Summary") {
                Text("Name: \(userName)")
                Text("Guests: \(guestCount)")
                Text("Children: \(children)")
                Text("Occasion: \(occasion)")
            }
        }
        .navigationTitle("Reserve a Table")
    }
}

#Preview {
    NavigationStack {
        ReservationForm()
    }
}
