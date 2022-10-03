//
//  FoodOrderView.swift
//  Youth
//
//  Created by Marvin Heinz on 03.10.22.
//

import SwiftUI

struct FoodOrderView: View {
    @Binding var showFoodOrderView:Bool
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Wähle dein Essen")
                    Menu("Essen") {
                        Button("Döner") {}
                        Button("Pizza") {}
                        Button("Pide") {}
                    }
                }
                .padding()
                .cornerRadius(20)
                .background(.regularMaterial)
                .cornerRadius(20)
                .padding(10)
                
                HStack {
                    Text("Wähle deine Konfiguration")
                    Menu("Konfiguration") {
                        Button("Döner Komplett") {}
                        Button("Döner Pide") {}
                        Button("Döner mit allem") {}
                    }
                }
                .padding()
                .cornerRadius(20)
                .background(.regularMaterial)
                .cornerRadius(20)
                .padding(10)
                
                
                Spacer()
            }
            .navigationTitle("Essen bestellen")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.principal) {
                    Button {
                        showFoodOrderView.toggle()
                    } label: {
                        Image(systemName: "chevron.compact.down")
                            .padding(20)
                            .font(.title)
                            .foregroundColor(Color.primary)
                    }
                }
            }
        }
    }
}
