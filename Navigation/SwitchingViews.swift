//
//  SwitchingViews.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import SwiftUI

struct SwitchingViews: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ContentView()) {
                    Text("Get Started")
                        .foregroundColor(.black)
                        .font(.system(size:30))
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct SwitchingViews_Previews: PreviewProvider {
    static var previews: some View {
        SwitchingViews()
    }
}
