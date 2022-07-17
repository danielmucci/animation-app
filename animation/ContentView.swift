//
//  ContentView.swift
//  animation
//
//  Created by mucci on 16/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(colorChange ? .yellow : .red)
                .scaleEffect(sizeChange ? 1.5 : 1)
                .animation(.default)
                .onTapGesture {
                    self.colorChange.toggle()
                }
                .onLongPressGesture {
                    self.sizeChange.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
