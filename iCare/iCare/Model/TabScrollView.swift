//
//  TabScrollView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import Foundation
import SwiftUI

struct TabScrollView: Identifiable {
    let id = UUID()
    var title: String
}

let myTabScrollView = [
    TabScrollView(title: "Mind And Body"),
    TabScrollView(title: "2"),
    TabScrollView(title: "3"),
    
]
