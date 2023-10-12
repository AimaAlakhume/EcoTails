//
//  PetView.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import Foundation
import SwiftUI

extension ContentView {
    class ViewModel: ObservableObject {
        @Published var pet: Pet
        private var repository = PetRepository()

        init() {
            // Load initial data
            pet = repository.loadData()
        }
        
        func saveData() {
            objectWillChange.send()
            repository.saveData(pet: pet)
        }
        
        func feed() {
            pet.lastMeal = Date()
            saveData()
        }
        
        func giveGift() {
            pet.lastGift = Date()
            saveData()
        }
        
        func playWith() {
            pet.lastPlay = Date()
            saveData()
        }
        
        deinit {
            //create a new pet
            pet = repository.loadData()
        }
    }
}

