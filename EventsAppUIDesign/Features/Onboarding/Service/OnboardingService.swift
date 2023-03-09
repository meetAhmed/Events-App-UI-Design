//
//  OnboardingService.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 09/03/2023.
//

import Foundation

class OnboardingService {
    static let instance = OnboardingService()
    private init() {}
}

extension OnboardingService {
    func getOnboardingModels() -> [Onboarding] {
        [
            .init(
                image: "OnboardingImage1",
                title: "Explore Upcoming and Nearby Events",
                subtitle: "In publishing and graphic design, Lorem is a placeholder text commonly"
            ),
            .init(
                image: "OnboardingImage2",
                title: "Web Have Modern Events Calendar Feature",
                subtitle: "Sed ut perspiciatis unde omnis iste natus"
            ),
            .init(
                image: "OnboardingImage3",
                title: "To Look Up More Events or Activities Nearby By Map",
                subtitle: "Sit voluptatem accusantium doloremque laudantium"
            )
        ]
    }
}
