//
//  MenuItemsOptionView.swift
//  Little Lemon
//
//  Created by Juan Romero.
//

import SwiftUI


struct MenuItemsOptionView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Food")
                    Text("Drink")
                    Text("Dessert")
                } header: {
                    Text("Selected categories")
                }
                Section {
                    Text("Most Popular")
                    Text("Price $-$$$")
                    Text("A-Z")
                } header: {
                    Text("sort by")
                }
            }
            .navigationTitle("Filter")
            
            .toolbar {
                Button("Done") {
                    dismiss()
                }
            }
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
