//
//  RectangleWithBottomCorners.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 10/03/2023.
//

import SwiftUI

struct RectangleWithBottomCorners: Shape {
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .bottomRight], cornerRadii: CGSize(width: radius, height: radius))
                return Path(path.cgPath)
    }
}

