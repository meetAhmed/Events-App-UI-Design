//
//  HomeView.swift
//  EventsAppUIDesign
//
//  Created by Ahmed Ali on 10/03/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var searchText = ""
    @Published var categories = CategoryService.instance.getCategories()
    @Published var showDetailView = false
}
