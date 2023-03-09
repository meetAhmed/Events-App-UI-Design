//
//  OnboardingViewModel.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 09/03/2023.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var models = OnboardingService.instance.getOnboardingModels()
    @Published var onboardingState = 0
    var currentOnboardingModel: Onboarding {
        models[onboardingState]
    }
    @Published var showHomeView = false
}
