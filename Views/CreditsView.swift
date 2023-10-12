//
//  CreditsView.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack{
            Text("Credits").font(.title)
            Text("Developed by").bold(true)
            Text("Aima Alakhume and Aikhoje Alakhume")
            Text("Inspired by").bold(true)
            Text("the Sanrio character, Gudetama")
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
