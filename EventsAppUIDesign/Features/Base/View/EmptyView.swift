//
//  EmptyView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 15/03/2023.
//

import SwiftUI

struct EmptyView: View {
    @Environment(\.presentationMode) var presentationMode
    let menuItem: SideMenuItem
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                Text(menuItem.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .font(.title2)
            
            Spacer()
        }
        .padding()
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView(menuItem: SideMenuItem(title: "My Profile", systemIcon: "person"))
    }
}
