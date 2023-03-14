//
//  UpcomingEventView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 14/03/2023.
//

import SwiftUI

struct UpcomingEventView: View {
    private var maxWidth = UIScreen.main.bounds.width * 0.75
    
    var body: some View {
        VStack(alignment: .leading) {
            Image.eventImage1
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: maxWidth - 20, height: 150)
                .cornerRadius(20)
            
            Text("International Band Mu...")
                .font(.system(size: 18, weight: .semibold))
            
            HStack {
                Image.peopleIcon
                Text("+20 Going")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.appBlueColor)
            }
            
            HStack {
                Image.locationIcon
                Text("36 Guild Street, London, UK")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.gray)
            }
            .frame(width: maxWidth - 20, alignment: .leading)
        }
        .padding(10)
        .frame(maxWidth: maxWidth, alignment: .top)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .shadow(
                    color: .black.opacity(0.1),
                    radius: 0.5,
                    x: 0,
                    y: 0
                )
        )
        .padding(5)
    }
}

struct UpcomingEventView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEventView()
    }
}
