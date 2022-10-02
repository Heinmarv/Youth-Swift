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
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Nummer", text: $songNumber)
                        .frame(width: 70, height: 25)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                        .mask(RoundedRectangle(cornerRadius: 15, style: .continuous))
                        .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke().fill(.black.opacity(0.1)).padding(-5))
                        .keyboardType(.numberPad)
                        .onSubmit {
                            showSongSheet.toggle()
                            hideKeyboard()
                        }
                        .onTapGesture {
                            showSongSheet = false
                            songNumber = ""
                        }
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
                            .padding()
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Song Search")
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
                
                Image(songNumber)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            })
        }
    }
}

struct SongSearchView_Previews: PreviewProvider {
    static var previews: some View {
        SongSearchView()
    }
}
