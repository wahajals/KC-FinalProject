//
//  lifestyleinfo.swift
//  iCare
//
//  Created by WSS on 04/09/2022.
//

import SwiftUI

struct lifestyleinfo: View {
    @Environment(\.openURL) var openURL
    var mylifestyle: lifestyle
    var body: some View {
        ZStack{
            Image(mylifestyle.name)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .background(.primary)
                .opacity(0.8)
                .blur(radius: 18)
            VStack {
                Image(mylifestyle.name)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                .frame(width: 150, height: 150)
                Text(mylifestyle.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
               
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    .foregroundColor(.black)
                    .accentColor(.white)
                    .padding()
                Text("OverView:")
                    .bold()
                    .font(.title)
                ScrollView(.vertical){
                ScrollView(.horizontal){
                    HStack {
                        ForEach(mylifestyle.types, id: \.self) { Data in
                            VStack{
                                Text(Data)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title3)
                                    .padding()
                                
                          
                            }
                       
                        }
                  
                    }
           
                }.frame(width: 400, height:100)
                Text("Prices:")
                    .bold()
                    .font(.title2)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(mylifestyle.prices, id: \.self) { data in
                            VStack{
                                Text("\(data) KD")
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title3)
                                    .padding()
                            }
                           
                        }
                       
                }
              
                }.frame(width: 400, height:100)
                    HStack{
                        Button("For Further Information") {
                            openURL(URL(string: mylifestyle.url)!)
                        } .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.roundedRectangle(radius: 20))
                            .foregroundColor(.black)
                            .accentColor(.white)
                            .padding()
                    }
            }
            }
        }
    }
}

struct lifestyleinfo_Previews: PreviewProvider {
    static var previews: some View {
        lifestyleinfo(mylifestyle: lifestyle(name: "DietBux", types: ["Diet","Two Meals", "Lifestyle","Low Carb", "Fitness","Athlete","Keto","Vegetarian"], title: "Healthy Food", prices: [174,144,184,174,194,194,194,164], url: "https://www.instagram.com/dietbux/"))
    }
}

