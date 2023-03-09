//
//  RectangleWithTopCorners.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 09/03/2023.
//

import SwiftUI

struct RectangleWithTopCorners: Shape {
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: radius, height: radius))
                return Path(path.cgPath)
    }
}
