//
//  EventDetailsView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 14/03/2023.
//

import SwiftUI

struct EventDetailsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .top) {
                    Image.eventCoverImage
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                    
                    HStack {
                        Image(systemName: "arrow.left")
                            .onTapGesture {
                                presentationMode.wrappedValue.dismiss()
                            }
                        Text("Event Details")
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "bookmark.fill")
                            .padding(.horizontal, 8)
                            .padding(.vertical, 6)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white.opacity(0.3))
                            )
                    }
                    .padding(.horizontal, UIScreen.main.bounds.width * 0.05)
                    .padding(.vertical,  UIScreen.main.bounds.height * 0.065)
                    .font(.title2)
                    .foregroundColor(.white)
                }
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.height * 0.15
                )
                
                HStack {
                    Image.peopleIcon
                    Text("+20 Going")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.appBlueSecondaryColor)
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Invite")
                            .font(.system(size: 15, weight: .regular))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.appBlueColor)
                            )
                    }
                }
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .shadow(
                            color: .black.opacity(0.1),
                            radius: 5,
                            x: 0,
                            y: 0
                        )
                )
                .padding(.horizontal, UIScreen.main.bounds.width * 0.05)
                .padding(.vertical, UIScreen.main.bounds.height * 0.025)
            }
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 0) {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("International Band Music Concert")
                            .font(.system(size: 35, weight: .regular))
                        
                        HStack(spacing: 20) {
                            Image.eventDateIcon
                            VStack(alignment: .leading, spacing: 8) {
                                Text("14 December, 2021")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("Tuesday, 4:00PM - 9:00PM")
                                    .font(.caption)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            Image.eventLocationIcon
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Gala Convention Center")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("36 Guild Street London, UK")
                                    .font(.caption)
                            }
                        }
                        
                        HStack(spacing: 20) {
                            Image.eventOrganizerIcon
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Smith Cairo")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("Organizer")
                                    .font(.caption)
                            }
                        }
                        
                        Text("About Event")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.")
                    }
                    .padding(.horizontal, 24)
                    
                    Spacer()
                }
            }
        }
        .background(Color.appBackgroundColor.opacity(0.3))
    }
}

struct EventDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailsView()
    }
}
