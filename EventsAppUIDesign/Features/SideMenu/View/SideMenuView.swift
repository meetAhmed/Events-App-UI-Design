//
//  SideMenuView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 15/03/2023.
//

import SwiftUI

struct SideMenuView: View {
    @State private var showSideMenu = true
    @State private var selectedSideMenuItem: SideMenuItem?
    
    var body: some View {
        ZStack(alignment: .top) {
            sideMenu
                .opacity(showSideMenu ? 1.0 : 0.0)
            
            Color.appBlueColor
                .cornerRadius(50)
                .frame(height: UIScreen.main.bounds.height * 0.2)
                .ignoresSafeArea()
                .opacity(showSideMenu ? 0.0 : 1.0)
            
            HomeView {
                withAnimation(.easeIn(duration: 0.25)) {
                    showSideMenu.toggle()
                }
            }
            .cornerRadius(showSideMenu ? 40 : 0)
            .scaleEffect(showSideMenu ? 0.90 : 1.0)
            .offset(x: showSideMenu ? UIScreen.main.bounds.width * 0.5 : 0)
        }
        .edgesIgnoringSafeArea(.bottom)
        .fullScreenCover(item: $selectedSideMenuItem) { item in
            if item.title == "My Profile" {
                ProfileView()
            } else {
                EmptyView(menuItem: item)
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

private extension SideMenuView {
    var sideMenu: some View {
        VStack(alignment: .leading) {
            Image.eventOrganizerIcon
            Text("Smith Cario")
                .font(.system(size: 20, weight: .bold))
           
            VStack(alignment: .leading) {
                ForEach(sideMenuItems) { item in
                    SideMenuItemView(item: item)
                        .padding(8)
                        .background(
                            LinearGradient(colors: [.clear, .appBlueColor.opacity(0.25)], startPoint: .topLeading, endPoint: .bottomTrailing)
                                .cornerRadius(20)
                                .opacity(selectedSideMenuItem?.title == item.title ? 1.0 : 0.0)
                        )
                        .onTapGesture {
                            selectedSideMenuItem = item
                        }
                }
            }
            .padding(.top, 30)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding()
    }
    
    var sideMenuItems: [SideMenuItem] {
        [
            .init(title: "My Profile", systemIcon: "person"),
            .init(title: "Message", systemIcon: "bubble.left"),
            .init(title: "Calendar", systemIcon: "calendar"),
            .init(title: "Bookmark", systemIcon: "bookmark"),
            .init(title: "Contact Us", systemIcon: "mail"),
            .init(title: "Settings", systemIcon: "gearshape"),
            .init(title: "Help & FAQs", systemIcon: "rectangle.portrait.and.arrow.right")
        ]
    }
}
