//
//  ContentView.swift
//  iCare
//
//  Created by WSS on 29/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView{
        ZStack {
            TabMenuView()
//                .cornerRadius(isShowing ? 20 : 10)
//                .offset(x: isShowing ? 200 : 0, y: isShowing ? 44 : 0)
//                .scaleEffect(isShowing ? 0.8 : 1)
            }
                }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabMenuView: View {
    var body: some View {
        TabView {
            HomeIView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            OurMissionView()
                .tabItem {
                    Image(systemName: "i.circle")
                    Text("Our Mission")
                }
            ContactUsView()
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Contact Us")
                }
            loginSignUp()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("My Profile")
                }
        }
        .accentColor(.teal)
    }
}
