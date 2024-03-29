//
//  PetRepository.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import Foundation

class PetRepository {
    private var PET_KEY = "PET_KEY"
    private var pet: Pet
    
    // Try to load data, or else create a new pet
    init() {
        if let data = UserDefaults.standard.data(forKey: PET_KEY) {
            if let decoded = try? JSONDecoder().decode(Pet.self, from: data) {
                self.pet = decoded
                print("Pet data successfully retrieved!")
                return
            }
        }
        self.pet = Pet(name: "Gudetama", lastMeal: Date(), lastGift: Date(), lastPlay: Date(), unhappySince: Date())
    }
    
    func loadData() -> Pet {
        return self.pet
    }
    
    func saveData(pet: Pet) {
        if let encoded = try? JSONEncoder().encode(pet) {
            UserDefaults.standard.set(encoded, forKey: PET_KEY)
            
            print("Data saved at: \(Date().formatted(date: .omitted, time: .standard))")
        }
    }
}
