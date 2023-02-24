//
//  MenuItem.swift
//  Little Lemon
//
//  Created by Juan Romero.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var title: String = ""
    var ingredients: [Ingredient] = [.carrot]
}
