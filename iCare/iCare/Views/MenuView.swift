//
//  MenuView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct MenuView: View {
    @State var selectedTab = "Home"
    @State var showMenu = false
    var body: some View {
        ZStack{
            Color.init("CustomColor").ignoresSafeArea()
            SideMenuView(selectedTab: $selectedTab)
            HomePageView(selectedTab: $selectedTab)
                
                .overlay {
                    Button
                        withAnimation(.spring()){
                        showMenu.toggle()
                    } label: {
                        Text("button")
                    }

                }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

extension View {
    func getRect()->CGRect{
        
        return UIScreen.main.bounds
    }
}

