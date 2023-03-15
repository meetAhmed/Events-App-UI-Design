//
//  ProfileEventView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 15/03/2023.
//

import SwiftUI

struct ProfileEventView: View {
    var body: some View {
        HStack {
            Image.eventImage1
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width * 0.30, height: 100)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text("1st  May- Sat -2:00 PM")
                    .foregroundColor(.appBlueColor)
                    .font(.system(size: 14, weight: .medium))
                Text("A virtual evening of smooth jazz")
                    .font(.system(size: 22, weight: .medium))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .shadow(
                    color: .appBackgroundColor.opacity(0.5),
                    radius: 5,
                    x: 0,
                    y: 0
                )
        )
        .padding(5)
    }
}

struct ProfileEventView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEventView()
    }
}
