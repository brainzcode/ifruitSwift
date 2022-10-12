//
//  SettingsLabelView.swift
//  iFRUIT
//
//  Created by SOG on 5/6/22.
//

import SwiftUI

struct SettingsLabelView: View {
//    PROPERTIES
    
    var labelText: String
    var labelImage: String
//    BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "iFruit", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
