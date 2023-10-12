//
//  CustomARViewRepresentable.swift
//  AppDemo
//
//  Created by Aima Alakhume on 3/19/23.
//

import SwiftUI

struct CustomARViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> CustomARView {
        return CustomARView()
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) {
        
    }
}
