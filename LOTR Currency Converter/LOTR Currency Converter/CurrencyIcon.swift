//
//  CurrencyIcon.swift
//  LOTR Currency Converter
//
//  Created by Steven Sousa on 11/13/23.
//

import SwiftUI

struct CurrencyIcon: View {
    @State var currencyImage: String
    @State var currencyText: String
    var body: some View {
        ZStack{
            // Currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            
            // Currency text
            VStack {
                Spacer()
                
                Text(currencyText)
                    .padding(3)
                    .font(.caption)
                .background(.brown.opacity(0.75))
            }
            
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .cornerRadius(25)
    }
}

#Preview {
    CurrencyIcon(currencyImage: "goldpenny", currencyText: "Gold Penny")
        .previewLayout(.sizeThatFits)
}
