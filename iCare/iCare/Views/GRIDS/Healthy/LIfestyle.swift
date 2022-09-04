//
//  LIfestyle.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct LIfestyle: View {
    var myLifestyle: lifestyle
    var body: some View {
        NavigationView{
            ZStack{
                List{
                    
                        ForEach(lifestyleDate) { Data in
                            NavigationLink {
                                lifestyleinfo(mylifestyle: Data)
                            } label: {
                                lifestyleDetails(lifestyle: Data.name)
                            }
                            
                        }

                    }
            }.navigationTitle("LifeStyle")
        }
    }
}

struct LIfestyle_Previews: PreviewProvider {
    static var previews: some View {
        LIfestyle(myLifestyle: lifestyle(name: "DietBux", types: ["Diet","Two Meals", "Lifestyle","Low Carb", "Fitness","Athlete","Keto","Vegetarian"], prices: [174,144,184,174,194,194,194,164], url: "https://www.instagram.com/dietbux/"))
    }
}
