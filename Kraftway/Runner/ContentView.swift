//
//  ContentView.swift
//  Kraftway
//
//  Created by Nick Morris on 9/17/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
            MenuView()
                    .tabItem {
                        Image(systemName: "wallet.pass.fill")
                        Text("Menu")
                    }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
