//
//  ProfileView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 15/03/2023.
//

import SwiftUI

enum ProfileSection: String {
    case about, event, reviews
}

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    private let profileSections: [ProfileSection] = [.about, .event, .reviews]
    @State private var selectedSection: ProfileSection = .about
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "arrow.left")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                Text("Profile")
                    .fontWeight(.bold)
                Spacer()
            }
            .font(.title2)
            
            Image.eventOrganizerIcon
                .resizable()
                .frame(width: 100, height: 100)
            
            Text("Smith Cario")
                .font(.system(size: 24, weight: .medium))
            
            HStack {
                VStack {
                    Text("350")
                        .fontWeight(.semibold)
                    Text("Following")
                        .foregroundColor(.secondary)
                        .fontWeight(.regular)
                }
                
                Spacer()
                    .frame(width: 1, height: 32)
                    .background(.secondary.opacity(0.5))
                    .padding(.horizontal)
                
                VStack {
                    Text("346")
                        .fontWeight(.semibold)
                    Text("Followers")
                        .foregroundColor(.secondary)
                        .fontWeight(.regular)
                }
            }
            
            Button {
                
            } label: {
                HStack {
                    Image(systemName: "pencil")
                    Text("Edit Profile")
                }
                .foregroundColor(.appBlueColor)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.appBlueColor)
                )
            }
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    ForEach(profileSections, id: \.self) { section in
                        Text(section.rawValue.uppercased())
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(section == selectedSection ? .appBlueColor : .gray)
                            .background(
                                ZStack {
                                    if section == selectedSection {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.appBlueColor)
                                            .frame(height: 3)
                                            .offset(y: 15)
                                    }
                                }
                            )
                            .onTapGesture {
                                selectedSection = section
                            }
                            .padding(.horizontal)
                    }
                }
                
                ScrollView {
                    VStack {
                        if selectedSection == .about {
                            aboutSectionContent
                        } else if selectedSection == .event {
                            ForEach(1..<5) { _ in
                                ProfileEventView()
                            }
                        } else if selectedSection == .reviews {
                            ForEach(1..<5) { _ in
                                ReviewView()
                            }
                        }
                    }
                }
                .padding(.top)
                
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

private extension ProfileView {
    var aboutSectionContent: some View {
        Text("Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.")
            .font(.subheadline)
            .padding(.top, 20)
    }
}
