//
//  MenuItemsView.swift
//  Little Lemon
//
//  Created by Juan Romero.
//

import SwiftUI

struct MenuItemsView: View {
    
    let foodItems = [
        MenuItem(title: "Food 1", ingredients: [.broccoli, .carrot]),
        MenuItem(title: "Food 2", ingredients: [.pasta]),
        MenuItem(title: "Food 3", ingredients: [.spinach]),
        MenuItem(title: "Food 4", ingredients: [.tomatoSauce]),
        MenuItem(title: "Food 5", ingredients: [.carrot]),
        MenuItem(title: "Food 6", ingredients: [.pasta]),
        MenuItem(title: "Food 7", ingredients: [.pasta]),
        MenuItem(title: "Food 8", ingredients: [.spinach]),
        MenuItem(title: "Food 9", ingredients: [.broccoli, .spinach]),
        MenuItem(title: "Food 10", ingredients: [.carrot, .spinach, .tomatoSauce]),
        MenuItem(title: "Food 11", ingredients: [.broccoli, .pasta]),
        MenuItem(title: "Food 12", ingredients: [.spinach, .tomatoSauce])
    ]
    
    let drinkItems = [
        MenuItem(title: "Drink 1", ingredients: [.broccoli, .carrot]),
        MenuItem(title: "Drink 2", ingredients: [.pasta]),
        MenuItem(title: "Drink 3", ingredients: [.spinach]),
        MenuItem(title: "Drink 4", ingredients: [.tomatoSauce]),
        MenuItem(title: "Drink 5", ingredients: [.carrot]),
        MenuItem(title: "Drink 6", ingredients: [.pasta]),
        MenuItem(title: "Drink 7", ingredients: [.pasta]),
        MenuItem(title: "Drink 8", ingredients: [.spinach])
    ]
    
    let dessertItems = [
        MenuItem(title: "Dessert 1", ingredients: [.broccoli, .carrot]),
        MenuItem(title: "Dessert 2", ingredients: [.pasta]),
        MenuItem(title: "Dessert 3", ingredients: [.spinach]),
        MenuItem(title: "Dessert 4", ingredients: [.tomatoSauce])
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    @State private var showingMenuItemsOptionView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    
                    Text("Food")
                        .font(.title)
                        .padding(.leading, 10)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(foodItems) { name in
                            NavigationLink {
                                MenuItemDetailsView(item: name)
                                    .navigationBarTitle(Text("\(name.title)"))
                            } label: {
                                VStack {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(width: 110, height: 100)
                                    
                                    Text(name.title)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    
                    Text("Drinks")
                        .font(.title)
                        .padding(.leading, 10)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(drinkItems) { name in
                            NavigationLink {
                                MenuItemDetailsView(item: name)
                                    .navigationBarTitle(Text("\(name.title)"))
                            } label: {
                                VStack {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(width: 110, height: 100)
                                    
                                    Text(name.title)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    
                    Text("Dessert")
                        .font(.title)
                        .padding(.leading, 10)
                    
                    LazyVGrid(columns: columns) {
                        ForEach(dessertItems) { name in
                            NavigationLink {
                                MenuItemDetailsView(item: name)
                                    .navigationBarTitle(Text("\(name.title)"))
                            } label: {
                                VStack {
                                    Rectangle()
                                        .fill(Color.black)
                                        .frame(width: 110, height: 100)
                                    
                                    Text(name.title)
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    
                }
                .padding()
            }
            .navigationTitle("Menu")
            .toolbar {
                Button {
                    showingMenuItemsOptionView = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
            }
            .sheet(isPresented: $showingMenuItemsOptionView) {
                MenuItemsOptionView()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
