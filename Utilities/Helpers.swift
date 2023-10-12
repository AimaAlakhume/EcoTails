//
//  Helpers.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import Foundation
import SwiftUI

func calcTimeSince(date: Date) -> Int {
    let seconds = Int(-date.timeIntervalSinceNow)
    return seconds
}

extension View {
    func centerH() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
