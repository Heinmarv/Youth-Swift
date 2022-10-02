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
    
    let columns = [
            GridItem(.fixed(100)),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    Button {
                        showSongSearchView.toggle()
                    } label: {
                        VStack {
                            Image(systemName: "magazine.fill")
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
                    }
                    .cornerRadius(20)
                    .padding(5)
                    .background(.regularMaterial)
                    .cornerRadius(20)
                    .padding(10)
                    .frame(minWidth: 200)
                    
                    Button {
                        print("")
                    } label: {
                        VStack {
                            Text("Youth News")
                                .padding(1)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            Text("Die Jugend beginnt heute wieder um 19:30 Uhr")
                                .padding(1)
                                .padding(.leading, 5)
                                .padding(.trailing, 5)
                                .font(.title3)
                                .foregroundColor(.primary)
                        }
                    }
                    .cornerRadius(20)
                    .padding(5)
                    .background(.regularMaterial)
                    .cornerRadius(20)
                    .padding(10)
                }
                .padding()
            }
            .navigationTitle("Youth Home")
            .toolbar {
                ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Menu {
                        Button(action: {}) {
                            Label("Lied suchen", systemImage: "magnifyingglass")
                        }
                        Button(action: {}) {
                            Label("Essen bestellen", systemImage: "bag.fill")
                        }
                        Button(action: {showSettingsView.toggle()}) {
                            Label("Einstellungen", systemImage: "gear")
                        }
                    } label: {
                        Image(systemName: "circle.grid.3x3.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
            }
            .sheet(isPresented: $showSongSearchView, content: {SongSearchView()})
            .sheet(isPresented: $showSettingsView, content: {SettingsView(showSettingsView: $showSettingsView)})
        }
    }
}

struct YouthHomeView_Previews: PreviewProvider {
    static var previews: some View {
        YouthHomeView()
    }
}
