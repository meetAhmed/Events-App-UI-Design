//
//  HomeView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 09/03/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var vm = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            upcomingEventsView
        
            inviteFriendsView
            
            Spacer()
        }
        .background(Color.appBackgroundColor.opacity(0.3))
        .fullScreenCover(isPresented: $vm.showDetailView) {
            EventDetailsView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

private extension HomeView {
    var headerView: some View {
        VStack(spacing: 10) {
            HStack {
                Image.sideNavBtn
                Spacer()
                VStack {
                    HStack {
                        Text("Current Location")
                            .font(.system(size: 14, weight: .regular))
                            .opacity(0.7)
                        
                        Image(systemName: "arrowtriangle.down.fill")
                            .resizable()
                            .frame(width: 10, height: 5)
                    }
                    Text("New York, USA")
                        .font(.system(size: 16, weight: .semibold))
                }
                Spacer()
                Image.notificationBtn
            }
            .padding(.horizontal, 24)

            HStack {
                Image.searchIcon
                Spacer()
                    .frame(width: 1, height: 20)
                    .background(.white.opacity(0.7))
                    .padding(.leading)
                
                TextField("", text: $vm.searchText)
                    .tint(.white)
                    .background(
                        ZStack {
                            if vm.searchText.isEmpty {
                                Text("Search...")
                                    .foregroundColor(.white.opacity(0.7))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    )
                    .padding(.leading)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Image.filtersIcon
                    
                    Text("Filters")
                        .font(.system(size: 14, weight: .regular))
                }
                .padding(6)
                .background(
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.appBlueSecondaryColor)
                )
            }
            .padding(.top)
            .padding(.horizontal, 24)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.categories) { category in
                        CategoryView(category: category)
                    }
                }
            }
            .offset(y: 21)
            .padding(.leading, 24)
        }
        .frame(maxWidth: .infinity)
        .frame(height: UIScreen.main.bounds.height * 0.2)
        .background(
            RectangleWithBottomCorners(radius: 50)
                .fill(Color.appBlueColor)
                .ignoresSafeArea()
        )
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
    }
    
    var upcomingEventsView: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Upcoming Events")
                    .font(.system(size: 18, weight: .medium))
                Spacer()
                Text("See all")
                    .font(.system(size: 14, weight: .regular))
                Image(systemName: "arrowtriangle.right.fill")
                    .resizable()
                    .frame(width: 6, height: 10)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<5) { _ in
                        UpcomingEventView()
                            .onTapGesture {
                                vm.showDetailView.toggle()
                            }
                    }
                }
            }
        }
        .padding(.top, 25)
        .padding()
    }
    
    var inviteFriendsView: some View {
        ZStack(alignment: .trailing) {
            VStack(alignment: .leading) {
                Text("Invite your friends")
                    .font(.system(size: 16, weight: .semibold))
                
                Text("Get $20 for ticket")
                    .font(.system(size: 14, weight: .regular))
                
                Button {
                    
                } label: {
                    Text("INVITE")
                        .padding(10)
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.appSkyBlueColor)
                        )
                }
            }
            .padding(25)
            .frame(maxWidth: .infinity, alignment: .topLeading)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.appSkyBlueColor.opacity(0.6))
            )
            .padding(.horizontal, 25)
            
            Image.inviteFriends
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 150)
                .padding(.horizontal, 25)
        }
    }
}
