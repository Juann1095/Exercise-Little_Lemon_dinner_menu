//
//  MenuViewViewModel.swift
//  Little Lemon
//
//  Created by Juan Romero.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID  {get}
    var price: Double {get}
    var title: String {get}
    var menuCategory: MenuCategory {get}
    var orderCount: Int {get set}
    var priceTwo: Int {get set}
    var ingredient: [Ingredient] {get set}
    
}

class MenuViewViewModel: MenuItemProtocol  {
    
    var id = UUID()
    
    var price: Double = 10.99
    
    var title: String = ""
    
    var menuCategory: MenuCategory = .drink
    
    var orderCount: Int = 1000
    
    var priceTwo: Int = 0
    
    var ingredient: [Ingredient] = []

    var foodMenu: [MenuItem] = []
    var drinkMenu: [MenuItem] = []
    var dessertMenu: [MenuItem] = []
    
    
}
