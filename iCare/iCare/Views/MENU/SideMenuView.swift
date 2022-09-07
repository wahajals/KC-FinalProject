//
//  SideMenuView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        NavigationView{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.init("CustomColor"),Color.init("CustomColor2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 170)
                    .foregroundColor(.white)
                HStack{
                MenuView(myMenu: "house", title: "Home")
                NavigationLink {
                    HomeIView()
                } label: {
                    Text("")
                        .frame(width:100, height: 100)
                }
                Spacer()
            }.frame(height: 100)
            HStack{
                MenuView(myMenu: "bell.badge", title: "Notifications")
                NavigationLink {
                    NotificationsView()
                } label: {
                    Text("")
                        .frame(width:100,height: 100)
                }
                Spacer()
            }
                HStack{
                MenuView(myMenu: "person.2", title: "My Profile")
                NavigationLink {
                    loginSignUp()
                } label: {
                    Text("")
                        .frame(width:100, height: 100)
                }
               Spacer()
            }.frame(height: 100)
                HStack{
                MenuView(myMenu: "i.circle", title: "Our Mission")
                NavigationLink {
                    OurMissionView()
                } label: {
                    Text("")
                        .frame(width:100, height: 100)
                }
               Spacer()
            }.frame(height: 100)
                HStack{
                MenuView(myMenu: "questionmark.circle", title: "Contact Us")
                NavigationLink {
                    ContactUsView()
                } label: {
                    Text("")
                        .frame(width:100, height: 100)
                }
                Spacer()
                }.frame(height: 100)
           
            }.foregroundColor(.white)
                .padding()
            }
    }
        }
     
    }
//}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

struct MenuView: View {
    var myMenu: String
    var title: String
    var body: some View {
        HStack{
            Image(systemName: "\(myMenu)")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 80)
            Text(title)
                .bold()
                .frame(width:110, height:80)
//                .font(.system(.title3))
                .foregroundColor(.white)
        }
    }
}
