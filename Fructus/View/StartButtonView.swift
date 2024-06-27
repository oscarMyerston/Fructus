//
//  StartButtonView.swift
//  Fructus
//
//  Created by Oscar David Myerston Vega on 26/06/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    // MARK: - BODY

    var body: some View {
        Button {
            isOnboarding = false
            print("Exit the onboarding")
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().stroke(Color.white, lineWidth: 1.25))
        }
        .accentColor(Color.white)

    }
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
