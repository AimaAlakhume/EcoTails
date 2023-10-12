//
//  IntroView.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack {
            Image("NewbornPet").resizable().scaledToFit()
            Text("Say hello to your new pet!")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
