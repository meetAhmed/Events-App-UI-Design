//
//  OnboardingView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 09/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject private var vm = OnboardingViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(vm.currentOnboardingModel.image)
                .resizable()
                .scaledToFit()
                .offset(y: 10)
            
            VStack(spacing: 10) {
                Spacer()
                
                Text(vm.currentOnboardingModel.title)
                    .font(.system(size: 22, weight: .semibold))
                
                Spacer()
                
                Text(vm.currentOnboardingModel.subtitle)
                    .font(.system(size: 15, weight: .regular))
                
                Spacer()
                
                HStack {
                    Text("Skip")
                        .font(.system(size: 18, weight: .regular))
                        .foregroundColor(.white.opacity(0.8))
                        .onTapGesture {
                            vm.showHomeView.toggle()
                        }
                    
                    Spacer()
                    ForEach(0..<3) { index in
                        Circle()
                            .fill(vm.onboardingState == index ? .white : .white.opacity(0.25))
                            .frame(width: 10, height: 10)
                    }
                    Spacer()
                    Text("Next")
                        .font(.system(size: 18, weight: .medium))
                        .onTapGesture {
                            if vm.onboardingState == vm.models.count - 1 {
                                vm.showHomeView.toggle()
                            } else {
                                withAnimation(.spring()) {
                                    vm.onboardingState += 1
                                }
                            }
                        }
                }
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height * 0.3)
            .background(
                RectangleWithTopCorners(radius: 48)
                    .fill(.blue)
                    .ignoresSafeArea()
            )
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
        }
        .fullScreenCover(isPresented: $vm.showHomeView) {
            SideMenuView()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
