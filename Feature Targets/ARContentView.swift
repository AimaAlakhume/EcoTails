//
//  ARContentView.swift
//  AppDemo
//
//  Created by Aima Alakhume on 3/19/23.
//

import SwiftUI

struct ARContentView: View {
    var body: some View {
        CustomARViewRepresentable()
            .ignoresSafeArea()
    }
}

struct ARContentView_Previews: PreviewProvider {
    static var previews: some View {
        ARContentView()
    }
}
