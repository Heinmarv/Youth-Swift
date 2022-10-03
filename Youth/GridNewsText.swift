//
//  GridContentView.swift
//  Youth
//
//  Created by Marvin Heinz on 03.10.22.
//

import SwiftUI

struct GridNewsText: View {
    @State var headline: String
    @State var text: String
    
    var body: some View {
        Button {
            print("")
        } label: {
            VStack {
                Text(headline)
                    .padding(1)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text(text)
                    .padding(1)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    .font(.title3)
                    .foregroundColor(.primary)
            }
            .frame(width: 300, height: 120)
            .padding()
            .cornerRadius(20)
            .background(.regularMaterial)
            .cornerRadius(20)
            .padding(20)
        }
    }
}
