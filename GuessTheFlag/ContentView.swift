//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jorge Encinas on 6/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
            
            //Color(red: 1, green: 0.8, blue: 0) //Here it is not obvious by context if we were to write just .green, so now it is necessary for you to write Color.green
                //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: .infinity)
            //Note you can't have min/max AND width: 200, height: 200 (unlike CSS)
            //Text("Your content")
            //    .background(.blue)
        }//.background(.red) //This one changes from coloring just the text, to coloring everything! (and back to seemingly nothing.
            .ignoresSafeArea()
    }
}

// Wanting to return things arranged NEATLY, these are popular:
//  1. HStack - Horizontal
//  2. VStack - Vertizal
//  3. ZStack - "Zepth"

// If we don't include any kind, Swift figures out we want VStack.
// BENEFITS OF BEING EXPLICIT
//      1. We can specify how much space to place btw views.
//      2. We can specify an `alignment`: left, center, right
//      3. If we don't, SwiftUI can freely arrange the views in a different way.

// COLORS - DEFAULT VS SEMANTIC
//  Some default colors are Color.blue, Color.green, Color.indigo
//  SEMANTIC COLORS: They don't say what the HUE is, instead describing their PURPOSE
//      Color.primary - SwiftUI's default Text Color (black/white depending on light/dark mode)
//      Color.secondary - slight transparency so the color behind shines through (also has mode variations)

//  SPECIFIC COLORS
//  Color(red: _, green: _, blue: _)

//  SAFE AREA
//  You can put your ZStack past it with `.ignoresSafeArea()`
//      Avoid putting important content outside the Safe Area though.
//  Some views, such as List, allow content to scroll past the safe area, but add extra insets,
//      so that the user can scroll things into view

//  MATERIALS
//  The background() modifier accepts `materials`
//      which can apply a "frosted glass effect"
//      over whatever is below them
//  With this you can create Depth Effects.

// VIBRANCY
//  That effect where your colors in the background are bleeding into the text in the foreground (that is, it is allowed to 'come through')
//  Just a hint of the color from the background.


#Preview {
    ContentView()
}
