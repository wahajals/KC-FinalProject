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
    var types: [String]
    var title: String
    var prices: [Int]
    var url: String
}

let lifestyleDate = [
//    Healthy Food Companies
    lifestyle(name: "DietBux", types: ["Diet","Two Meals", "Lifestyle","Low Carb", "Fitness","Athlete","Keto","Vegetarian"], title: "Healthy Food", prices: [174,144,184,174,194,194,194,164], url: "https://www.instagram.com/dietbux/"),
    lifestyle(name: "DietStation", types: ["The Diet","Lifestyle","Bodybuilding"], title: "Healthy Food", prices: [179,189,199,], url: "https://www.instagram.com/dietstation/"),
    lifestyle(name: "DietDone", types: ["Diet Plan","Diet Plus","Body Building",""], title: "Healthy Food", prices: [169,179,189], url: "https://www.instagram.com/dietdone/"),
    lifestyle(name: "DietCare", types: ["Slim Down","MediCare","Five A Week","Lifestyle","Weigh Up"], title: "Healthy Food", prices: [220,249,195,249,275], url: "https://www.instagram.com/thedietcare/"),
    lifestyle(name: "Tuning", types: ["Lose it","Build it"], title: "Healthy Food", prices: [159,175], url: "https://www.instagram.com/tuningkw/"),
    //    Gym
    lifestyle(name: "Spark Athletic", types: ["One of The Best Health Club"], title: "Gym", prices: [0], url: "https://www.sparkathletic.com"),
    lifestyle(name: "Oxygen Gym", types: ["One of The Best Health Club"], title: "Gym", prices: [0], url: "https://www.instagram.com/o2_gyms/"),
    lifestyle(name: "Platinum Gym", types: ["One of The Best Health Club"], title: "Gym", prices: [0], url: "https://www.platinumkw.com"),
    lifestyle(name: "Flare Fitness", types: ["One of The Best Health Club"], title: "Gym", prices: [0], url: "https://www.flare.fitness"),
    lifestyle(name: "The Champion", types: ["One of The Best Health Club"], title: "Gym", prices: [0], url: "https://www.instagram.com/thechampion.women/"),
    //   Courses
    lifestyle(name: "Loyac", types: ["Life & Teaching skills courses"], title: "Courses", prices: [0], url: "https://www.instagram.com/loyackuwait/"),
    lifestyle(name: "Injaz", types: ["Life & Teaching skills courses"], title: "Courses", prices: [0], url: "https://www.instagram.com/injaz_kuwait/"),
    lifestyle(name: "Youth Public Authority", types: ["Life & Teaching skills courses"], title: "Courses", prices: [0], url: "https://www.instagram.com/ypakwt/"),
]

