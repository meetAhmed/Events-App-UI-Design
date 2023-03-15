//
//  ReviewView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 15/03/2023.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image.eventOrganizerIcon
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text("Rocks Velkeinjen")
                    .font(.headline)
                HStack {
                    ForEach(1..<6) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                Text("Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.")
                    .font(.subheadline)
            }
            Spacer()
            Text("10 Feb")
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
