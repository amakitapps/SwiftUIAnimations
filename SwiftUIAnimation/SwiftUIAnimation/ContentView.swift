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
    @State private var isLoading = false

    var body: some View {
        
        ZStack {
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color.green, lineWidth: 5)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation.default.repeatForever(autoreverses: false))
                .onAppear() {
                    self.isLoading = true
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
