//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jorge Encinas on 6/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany",
                     "Ireland", "Italy", "Nigeria",
                     "Poland", "Spain", "UK",
                     "Ukraine", "USA"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var currentScore = 0
    
    func flagTapped(_ number : Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            currentScore += 1
        } else {
            scoreTitle = "Wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in:0...2)
    }
    
    var body: some View {
        ZStack {
            //Color.blue.ignoresSafeArea()
            LinearGradient(
                colors: [.blue, .black],
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                        .font(.largeTitle.weight(.semibold))
                    //largeTitle is the largest built-in iOS font size.
                    // it automatically scales up or down depending on user settings (DYNAMIC TYPE)
                    // we're still overriding it with .weight(.semibold)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .clipShape(.capsule)
                            .shadow(radius : 5)
                    }
                }
            }
        }.alert(
            scoreTitle, isPresented: $showingScore
        ) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is: \(currentScore)")
        }
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

// IMAGES
//      1. Image("pencil") loads an image called "Pencil" that you have in your project
//      2. Image(decorative: "pencil") will load the same image,
//          but won't read it out for users who have enabled the screen reader
//          This is useful for images that don't convey additional important information
//      3. Image(systemName: "pencil") will load the pencil icon built into iOS
//          this uses Apple's SF Symbols icon collection
//          you can search for icons you like
//          Download Apple's free SF Symbols app from the web to see the full set.

// SCREENREADER
//  By default the screen reader will read your IMAGE NAME if it is enabled,
//      so make sure you give your images clear names if you want to avoid confusing the user.
//      OR, if they're purely decorative, use Image(decorative:) initializer.


// ALERTS
//  A common way of notifying the user
//  a pop-up window with
//      -title
//      -button to dismiss it
//  To present it, we don't assign it to a variable, then write myAlert.show()
//  That would be like `series of events` thinking.

//  Instead, we create state that tracks if it's being shown
//      we then attach our alert somewhere to our user interface
//      and the State determines if it is shown or not.

// SHAPES: 4 Built-in shapes
//      - Rectangle
//      - Rounded Rectangle
//      - Circle
//      - Capsule
#Preview {
    ContentView()
}
