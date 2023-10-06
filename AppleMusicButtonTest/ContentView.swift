//
//  ContentView.swift
//  AppleMusicButtonTest
//
//  Created by Nikita Timonin on 05.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPressed = false
    
    var body: some View {
        Button("") {
            print("Pressed")
        }.buttonStyle(PlayButton())
        
        
//        Button {
//            isPressed.toggle()
//        } label: {
//            if isPressed {
//                Image(systemName: "play.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 30.0)
//                    .transition(.scale)
//                    .padding(.trailing, -4)
//                Image(systemName: "play.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 30.0)
//                    .transition(.slide)
//                    .padding(.leading, -4)
//            } else {
//                Image(systemName: "play.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 30.0)
//                    .padding(.trailing, -4)
//                Image(systemName: "play.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 30.0)
//                    .transition(.scale)
//                    .padding(.leading, -4)
//            }
//        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PlayButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(spacing: 0){
            if configuration.isPressed {
                Image(systemName: "play.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30.0)
                    .transition(.slide)
                Image(systemName: "play.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30.0)
                    .transition(.scale)
            } else {
                Image(systemName: "play.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30.0)
                    .transition(.scale)
                Image(systemName: "play.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30.0)
                    .transition(.scale)
            }
        }
        .foregroundColor(.blue)
        .padding(32)
        .background(configuration.isPressed ? .gray.opacity(0.3) : .clear)
        .clipShape(Circle())
    }
}
