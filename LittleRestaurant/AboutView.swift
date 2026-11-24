//
//  AboutView.swift
//  LittleRestaurant
//
//  Created by Mark Basaldua on 11/23/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("About Little Lemon")
                .font(.largeTitle)
                .bold()
            Text("Little Lemon serves seasonal Mediterranean dishes inspired by family recipes.")
                .multilineTextAlignment(.center)
            
            HStack(spacing:20) {
                Image(systemName: "fork.knife")
                Image(systemName: "leaf")
                Image(systemName: "map")
            }
            .font(.title2)
        }
        .padding()
    }
}
    
    
    #Preview {
        AboutView()
    }

