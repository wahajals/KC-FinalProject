//
//  Lifestyle.swift
//  iCare
//
//  Created by WSS on 03/09/2022.
//

import Foundation

struct lifestyle: Identifiable{
    let id = UUID()
    var name: String
    var image: String
    var types: [String]
    var prices: [Int]
    var url: String
}

let lifestyleDate = [
//    Healthy Food Companies
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
//    Gym
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
//   Courses
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
    lifestyle(name: "", image: "", types: [""], prices: [0], url: ""),
]
