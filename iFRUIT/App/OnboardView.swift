//
//  OnboardView.swift
//  iFRUIT
//
//  Created by SOG on 5/6/22.
//

import SwiftUI

struct OnboardView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
          } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
      }
    }

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
