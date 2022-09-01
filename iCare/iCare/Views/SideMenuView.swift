//
//  SideMenuView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Image("user")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .padding(.top,50)
            VStack(alignment:.leading, spacing:nil) {
                Text("Jack Martin")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                Button {
                    
                } label: {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                }
                VStack(alignment: .leading, spacing: 10){
                    TabButtonView(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                    TabButtonView(image: "bell.badge", title: "Notifications", selectedTab: $selectedTab, animation: animation)
                    TabButtonView(image: "person.2", title: "My Profile", selectedTab: $selectedTab, animation: animation)
                    TabButtonView(image: "i.circle", title: "Our Mission", selectedTab: $selectedTab, animation: animation)
                    TabButtonView(image: "questionmark.circle", title: "Contact Us", selectedTab: $selectedTab, animation: animation)
                }
                .padding(.leading,-15)
                .padding(.top,50)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 6, content: {
                    TabButtonView(image: "rectangle.righthalf.inset.filled.arrow.right", title: "Log Out", selectedTab: .constant(""), animation: animation)
                        .padding(.leading,-15)
                })
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.topLeading )
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
