//
//  ContentView.swift
//  iFRUIT
//
//  Created by SOG on 5/4/22.
//

import SwiftUI

struct ContentView: View {
//    PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
//    BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } // Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } // NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        .previewDevice("iPhone 11 Pro")
    }
}
