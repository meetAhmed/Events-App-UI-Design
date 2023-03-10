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
                            HStack {
                                category.image
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                
                                Text(category.text)
                                    .font(.system(size: 15, weight: .semibold))
                            }
                            .padding(10)
                            .frame(minWidth: 105)
                            .background(
                                RoundedRectangle(cornerRadius: 50)
                                    .fill(category.backgroundColor)
                            )
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
                            VStack(alignment: .leading) {
                                Image.eventImage1
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                
                                Text("International Band Mu...")
                                    .font(.system(size: 18, weight: .semibold))
                                
                                HStack {
                                    Image.peopleIcon
                                    Text("+20 Going")
                                        .foregroundColor(.appBlueColor)
                                }
                                
                                HStack {
                                    Image.locationIcon
                                    Text("36 Guild Street London, UK")
                                        .foregroundColor(.appBlueSecondaryColor.opacity(0.7))
                                }
                            }
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .shadow(
                                        color: .black.opacity(0.1),
                                        radius: 10,
                                        x: 0,
                                        y: 0
                                    )
                            )
                        }
                    }
                }
            }
            .padding(.top, 25)
            .padding()
                
            Spacer()
        }
        .background(Color.appBackgroundColor.opacity(0.3))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

private extension HomeView {
    
}
