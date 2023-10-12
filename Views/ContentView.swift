//
//  ContentView.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    private let timer = Timer.publish(every: 15, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Form {
            Section("Pet") {
                TextField("Name your pet!", text: $vm.pet.name)
                Image(vm.pet.happinessLevel == "Happy" ? "HappyPet" : "WeakPet")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .centerH()
                Text("Status: **\(vm.pet.happinessLevel)**")
                Text("Hunger Meter: **\(vm.pet.hunger)**")
                Text("Boredom Meter: **\(vm.pet.boredom)**")
                    
            }
            Section("Actions") {
                Button("Feed", action: vm.feed)
                Button("Play", action: vm.playWith)
                Button("Give gift", action: vm.giveGift)
            }
        }
        .onReceive(timer) {_ in
            vm.saveData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
