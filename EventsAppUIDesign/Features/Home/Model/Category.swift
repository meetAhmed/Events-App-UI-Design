//
//  Category.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 10/03/2023.
//

import SwiftUI

struct Category: Identifiable {
    let id = UUID().uuidString
    let text: String
    let image: Image
    let backgroundColor: Color
}
