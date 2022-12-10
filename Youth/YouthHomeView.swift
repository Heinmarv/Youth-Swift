//
//  YouthHomeView.swift
//  Youth
//
//  Created by Marvin Heinz on 02.10.22.
//

import SwiftUI

struct YouthHomeView: View {
    @State private var showSongSearchView = false
    @State private var showSettingsView = false
    @State private var showFoodOrderView = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Button {
                    print("")
                } label: {
                    VStack {
                        Image(systemName: "exclamationmark.shield.fill")
                            .padding(1)
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                        Text("Die Jugend App ist noch in der Beta Version")
                            .padding(1)
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .font(.title3)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 300, height: 100)
                    .padding()
                    .cornerRadius(20)
                    .background(.regularMaterial)
                    .cornerRadius(20)
                    .padding(10)
                }
                
                Button {
                    showSongSearchView.toggle()
                } label: {
                    VStack {
                        Image(systemName: "book.fill")
                            .padding(1)
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                        Text("Liederbuch")
                            .padding(1)
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                            .font(.title3)
                            .foregroundColor(.primary)
                    }
                    .frame(width: 300, height: 100)
                    .padding()
                    .cornerRadius(20)
                    .background(.regularMaterial)
                    .cornerRadius(20)
                    .padding(10)
                }
                
//                Button {
//                    showFoodOrderView.toggle()
//                } label: {
//                    VStack {
//                        Image(systemName: "takeoutbag.and.cup.and.straw.fill")
//                            .padding(1)
//                            .font(.largeTitle)
//                            .foregroundColor(.primary)
//                        Text("Essen bestellen")
//                            .padding(1)
//                            .padding(.leading, 5)
//                            .padding(.trailing, 5)
//                            .font(.title3)
//                            .foregroundColor(.primary)
//                    }
//                    .frame(width: 300, height: 100)
//                    .padding()
//                    .cornerRadius(20)
//                    .background(.regularMaterial)
//                    .cornerRadius(20)
//                    .padding(10)
//                }
            }
            .navigationTitle("Youth Home")
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
//                    Menu {
//                        Button(action: {}) {
//                            Label("Lied suchen", systemImage: "magnifyingglass")
//                        }
//                        Button(action: {}) {
//                            Label("Essen bestellen", systemImage: "bag.fill")
//                        }
//                        Button(action: {showSettingsView.toggle()}) {
//                            Label("Einstellungen", systemImage: "gear")
//                        }
//                    } label: {
//                        Image(systemName: "circle.grid.3x3.circle.fill")
//                            .resizable()
//                            .frame(width: 30, height: 30)
//                    }
                    
                    Button {
                        showSettingsView.toggle()
                    } label: {
                        Image(systemName: "gearshape.circle.fill")
                            .font(.title)
                            .foregroundColor(.primary)
                        }
                    }
                }
            }
            .sheet(isPresented: $showSongSearchView, content: {SongSearchView(showSongSearchView: $showSongSearchView)})
            .sheet(isPresented: $showSettingsView, content: {SettingsView(showSettingsView: $showSettingsView)})
            .sheet(isPresented: $showFoodOrderView, content: {FoodOrderView(showFoodOrderView: $showFoodOrderView)})
        }
    }


struct YouthHomeView_Previews: PreviewProvider {
    static var previews: some View {
        YouthHomeView()
    }
}
