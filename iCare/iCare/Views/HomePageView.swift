//
//  HomePageView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct HomePageView: View {
    @Binding var selectedTab: String
    var body: some View {
        TabView(selection: $selectedTab){
            HomeIView()
                .tag("Home")
            
            NotificationsView()
                .tag("Notifications")
            
            ProfileView()
                .tag("My Profile")
            
            OurMissionView()
                .tag("Our Mission")
            
            ContactUsView()
                .tag("Contact Us")
           }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
