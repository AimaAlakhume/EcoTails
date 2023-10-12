//
//  LandingView.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            Image("PetIcon").resizable().scaledToFit()
            Text("Eco Tails")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            Text("Raising Gudetama").font(.title)
        }
        .padding()
    }
}

struct TransitionView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ContentView()) {
                    Text("Get Started")
                        .foregroundColor(.green)
                        .font(.system(size:20))
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
        TransitionView()
    }
}

