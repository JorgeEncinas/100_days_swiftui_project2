//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jorge Encinas on 6/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { // a 3*3 grid, though I doubt this is the intended way!
            HStack {
                Text("1")
                Text("2")
                Text("3")
            }
            HStack {
                Text("4")
                Text("5")
                Text("6")
            }
            HStack {
                Text("7")
                Text("8")
                Text("9")
            }
        }
        
        //ZStack(alignment: .top) { //No concept of spacing, but it `does` have alignment. Can align differently-sized things
        //    Text("Hello, World!")
        //    Text("This is inside a stack!")
        //} //ZStack will draw things in this order: top to bottom, back to front. So if you place an image, then a text, that's the order, and so the text will end up on top.
        
        //VStack {
        //    Text("First")
        //    Text("Second")
        //    Spacer() //Push contents of the stack to one side, taking all remaining space automatically.
        //    Text("Third")
        //    Spacer() // More than one spacer, then they divide the available space between them
        //}
        //VStack(alignment: .leading, spacing: 20) {
        //    Text("Hello, world!")
        //    Text("This is inside a stack")
        //    HStack(spacing: 20) {
        //        Text("Hello again, world!")
        //        Text("This is inside an HStack")
        //    }
        //}
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


#Preview {
    ContentView()
}
