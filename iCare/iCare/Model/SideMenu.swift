//
//  SideMenu.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import Foundation
//
//enum SideMenu: Int, CaseIterable{
//    case Home
//    case Notifications
//    case MyProfile
//    case OurMission
//    case ContactUs
//    case Logout
//
//    var title: String {
//        switch self{
//        case .Home: return "Home"
//        case .Notifications: return "Notifications"
//        case .MyProfile: return "My Profile"
//        case .OurMission: return "Our Mission"
//        case .ContactUs: return "Contact Us"
//        case .Logout: return "Logout"
//        }
//    }
//
//    var imageName: String {
//        switch self{
//        case .Home: return "house"
//        case .Notifications: return "bell.badge"
//        case .MyProfile: return "person.2"
//        case .OurMission: return "i.circle"
//        case .ContactUs: return "questionmark.circle"
//        case .Logout: return "rectangle.righthalf.inset.filled.arrow.right"
//        }
//    }
//}

struct SideMenu: Identifiable {
    let id = UUID()
    var Category: String
    var imageName: String
}

  let MySideMenu = [
    SideMenu(Category: "Home", imageName: "house"),
    SideMenu(Category: "Notifications", imageName: "bell.badge"),
    SideMenu(Category: "My Profile", imageName: "person.2"),
    SideMenu(Category: "Our Mission", imageName: "i.circle"),
    SideMenu(Category: "Contact Us", imageName: "questionmark.circle"),
    SideMenu(Category: "Log Out", imageName: "rectangle.righthalf.inset.filled.arrow.right"),
  ]
