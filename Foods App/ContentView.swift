//
//  ContentView.swift
//  Foods App
//
//  Created by Fourcade7 on 05/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem{
                    VStack{
                        Image(systemName:"house")
                        Text("Домой")
                       }
                }
            SettingsScreen()
                .tabItem{
                    Label("Настройка", systemImage: "gear")
                }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
