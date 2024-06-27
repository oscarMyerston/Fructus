//
//  ContentView.swift
//  Fructus
//
//  Created by Oscar David Myerston Vega on 25/06/24.
//

import SwiftUI

struct ContentView: View {

    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData

    // MARK: - BODY

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 6)
                }
            }
            .navigationTitle("Fruits")
        } // : NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
