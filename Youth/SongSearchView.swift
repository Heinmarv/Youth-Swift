//
//  SongSearchView.swift
//  Youth
//
//  Created by Marvin Heinz on 02.10.22.
//

import SwiftUI

struct SongSearchView: View {
    @State private var songNumber = ""
    @State private var showLyric = false
    @State private var showSongSheet = false
    @State var scale: CGFloat = 1.0
    
    @Binding var showSongSearchView: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    TextField("Nummer", text: $songNumber)
                        .frame(width: 70, height: 25)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                        .padding(3)
                        .padding(.leading, 5)
                        .padding(.trailing, 5)
                        .mask(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke().fill(.primary.opacity(0.5)).padding(-5))
                        .keyboardType(.numberPad)
                        .onSubmit {
                            showSongSheet.toggle()
                            hideKeyboard()
                        }
                        .onTapGesture {
                            showSongSheet = false
                            songNumber = ""
                        }
                        .padding()
                    Button {
                        showSongSheet.toggle()
                        hideKeyboard()
                    } label: {
                        Text("Suchen")
                            .padding(15)
                            .frame(maxHeight: 35)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .padding(3)
                            .padding(.leading, 5)
                            .padding(.trailing, 5)
                    }
                }
                .padding()
                Spacer()
            }
            .padding()
            .navigationTitle("Song Search")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.principal) {
                    Button {
                        showSongSearchView.toggle()
                    } label: {
                        Image(systemName: "chevron.compact.down")
                            .padding(20)
                            .font(.title)
                            .foregroundColor(Color.primary)
                    }
                }
            }
            .sheet(isPresented: $showSongSheet, content: {
                if (showLyric == true) {
                    Image(songNumber)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .scaleEffect(scale)
                        .gesture(MagnificationGesture()
                            .onChanged { value in
                                self.scale = value.magnitude
                            })
                }
                Button {
                    showSongSheet.toggle()
                } label: {
                    Image(systemName: "chevron.compact.down")
                        .padding(20)
                        .font(.title)
                        .foregroundColor(Color.primary)
                }
                Image(songNumber)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .preferredColorScheme(.light)
                Spacer()
            })
        }
    }
}
