//
//  GridItemIcon.swift
//  Youth
//
//  Created by Marvin Heinz on 03.10.22.
//

import SwiftUI

struct GridNewsIcon: View {
    @State var icon: String
    @State var text: String
    
    var body: some View {
        Button {
            print("")
        } label: {
            VStack {
                Image(systemName: icon)
                    .padding(1)
                    .font(.largeTitle)
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
