//
//  ContentView.swift
//  iCare
//
//  Created by WSS on 29/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View { 
        ZStack {
            MenuView()
            TabView {
                HomeIView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                NotificationsView()
                    .tabItem {
                        Image(systemName: "bell")
                        Text("Notifications")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Explore")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("My Profile")
                    }
            }
            .accentColor(.teal)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
