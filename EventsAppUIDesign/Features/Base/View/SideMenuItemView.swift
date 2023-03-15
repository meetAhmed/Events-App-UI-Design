//
//  SideMenuItemView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 15/03/2023.
//

import SwiftUI

struct SideMenuItemView: View {
    let item: SideMenuItem
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: item.systemIcon)
            Text(item.title)
        }
        .font(.system(size: 16))
    }
}

struct SideMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuItemView(
            item: SideMenuItem(title: "My Profile", systemIcon: "person")
        )
    }
}
