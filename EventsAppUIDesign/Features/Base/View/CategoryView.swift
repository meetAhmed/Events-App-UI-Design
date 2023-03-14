//
//  CategoryView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 14/03/2023.
//

import SwiftUI

struct CategoryView: View {
    let category: Category
    
    var body: some View {
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

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: CategoryService.instance.getCategories()[0])
    }
}
