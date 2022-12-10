//
//  SettingsView.swift
//  Youth
//
//  Created by Marvin Heinz on 02.10.22.
//

import SwiftUI

struct SettingsView: View {
    @State private var appLanguage = "Deutsch"
    
    @Binding var showSettingsView: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(footer: Text("Hier kannst du die Sprache ändern. Here you can change the language. Здесь вы можете изменить язык.")) {
                        Menu(appLanguage) {
                            Button("Deutsch") {appLanguage = "Deutsch"}
                            Button("English") {appLanguage = "English"}
                            Button("Русский") {appLanguage = "Русский"}
                        }
                    }
                    Section(footer: Text("App Info")) {
                        Text("Youth 1.1.4")
                    }
                }
            }
            .navigationTitle("Einstellungen")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.principal) {
                    HStack {
                        Button {
                            showSettingsView.toggle()
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
}
