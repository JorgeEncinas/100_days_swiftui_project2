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
                //LinearGradient(
                    //colors: [Color.white, Color.black],
                //    stops: [
                //        .init(color: .white, location: 0.25),//Gradient.Stop(color: .white, location: 0.25),
                //        .init(color: .black, location: 0.90)//Gradient.Stop(color: .black, location: 0.90)
                //    ], //Note `.init` is a shorthand bc Swift knows we want to create Gradient.Stop objects. (Views?)
                //    startPoint: .top,
                //    endPoint: .bottom
                //)
                //RadialGradient(
                //    colors: [.blue, .black],
                //    center: .center,
                //    startRadius: 20,
                //    endRadius: 200
                //)
                //AngularGradient(
                //    colors: [.red, .yellow, .green, .blue, .purple, .red],
                //    center: .center
                //)
            }
            //Text("Your content")
            //    .foregroundStyle(.secondary)
            //    .padding(50)
            //    .background(.ultraThinMaterial)
            Text("Your content")
                .frame(maxWidth: .infinity, maxHeight: .infinity) //(maxWidth:200, maxHeight: 500)
                .foregroundStyle(.white)
                .background(.red.gradient)
            
        }.ignoresSafeArea()
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

// GRADIENTS
//  There are 4 types of Gradients to work with
//      like colors, most are views that can be drawn in our UI
//  Gradients are made up of
//      1. An array of colors to show
//      2. Size and Direction information
//      3. The type of gradient to use

//  LINEAR GRADIENT
//  Goes in ONE DIRECTION, so provide START and END points
//      LinearGradient(colors: [.white, .black], startPoint: .top, endPoint:.bottom)

//  GRADIENT STOPS
//  Let us specify both a COLOR and HOW FAR ALONG THE GRADIENT THE COLOR SHOULD BE USED
//      White from start, up to 45% of the available space, then black from 55% of the available space onwards.
//      LinearGradient(stops: [
//          Gradient.Stop(color: .white, location:0.45),
//          Gradient.Stop(color: .black, location:0.55)
//      ])

// RADIAL GRADIENTS
//      These move OUTWARD in a circle shape
//  We don't specify a direction, but a START and END RADIUS
//      how far from the center of the circle the color should start/stop changing

// ANGULAR GRADIENT / CONIC GRADIENT / CONICAL GRADIENT
//      This cycles colors around a circle, rather than Radiating Outward

// All of these gradients can have STOPS PROVIDED.
//  They can also work as STANDALONE VIEWS in your layouts.
//  or be used as part of a MODIFIER.
//  For example, as BACKGROUND FOR A TEXT VIEW.

// THE FOURTH TYPE OF GRADIENT: .gradient after any color
//  SwiftUI will automatically convert your color
//  into a very gentle LINEAR GRADIENT.

#Preview {
    ContentView()
}
