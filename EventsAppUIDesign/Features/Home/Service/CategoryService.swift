//
//  CategoryService.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 10/03/2023.
//

import Foundation

class CategoryService {
    static let instance = CategoryService()
    private init() {}
}

extension CategoryService {
    func getCategories() -> [Category] {
        [
            .init(text: "Sports", image: .sportsIcon, backgroundColor: .appRedColor),
            .init(text: "Music", image: .musicIcon, backgroundColor: .appOrangeColor),
            .init(text: "Food", image: .foodIcon, backgroundColor: .appGreenColor),
            .init(text: "Art", image: .artIcon, backgroundColor: .appSkyBlueColor)
        ]
    }
}
