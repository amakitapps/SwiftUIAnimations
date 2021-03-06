//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Mark Nair on 2/6/20.
//  Copyright © 2020 Mark Nair. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false

    var body: some View {
        
        ZStack {
            Circle()
            .frame(width: 200, height: 200)
                .foregroundColor(circleColorChanged ? .gray : .blue)
            
            Image(systemName: "heart.fill")
                .foregroundColor(heartColorChanged ? .red : .white)
                .font(.system(size: 100))
                .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
        }
        .animation(.default)
        .onTapGesture {
            self.circleColorChanged.toggle()
            self.heartColorChanged.toggle()
            self.heartSizeChanged.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
