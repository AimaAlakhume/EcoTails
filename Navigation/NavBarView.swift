//
//  NavBarView.swift
//  AppDemo
//
//  Created by Aima Alakhume on 2/19/23.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem() {
                    //Image("homeIcon").resizable().frame(width: 10.0, height: 10.0)
                    Text("Home")
                }
            MapView()
                .tabItem() {
                    //Image("mapIcon").resizable().frame(width: 10.0, height: 10.0)
                    Text("Map")
                }
            
            TipsView()
                .tabItem() {
                    Image("tipsIcon").resizable().frame(width: 10.0, height: 10.0)
                    Text("Tips")
                }
            
            CreditsView()
                .tabItem() {
                    //Image("creditsIcon").resizable().frame(width: 10.0, height: 10.0)
                    Text("Credits")
                }
        } .toolbarBackground(Color.blue, for: .tabBar)
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
