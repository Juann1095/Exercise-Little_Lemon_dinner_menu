//
//  MenuItemDetailsView.swift
//  Little Lemon
//
//  Created by Juan Romero.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    var item: MenuItem
    
    
    
    
    var body: some View {
        
        let classItem = MenuViewViewModel()
        
      
            ScrollView {
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 500)
                    Text("Price:")
                        .fontWeight(.bold)
                    Text(String(format: "%.2f", classItem.price))
                    Text("Ordered:")
                        .fontWeight(.bold)
                    Text("\(classItem.orderCount)")
                    Text("Ingredients:")
                        .fontWeight(.bold)
                    VStack {
                        ForEach(item.ingredients, id: \.self) { ingredient in
                            Text(ingredient.rawValue)
                        }
                    }
                }
            }
       
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(item: MenuItem(title: "Test Food 1", ingredients: [.carrot]))
    }
}
