//
//  LIfestyle.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct LIfestyle: View {
    private let Columns = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationView{
            ZStack{
//                List{
//
//                        ForEach(lifestyleDate) { Data in
//                            NavigationLink {
//                                lifestyleinfo(mylifestyle: Data)
//                            } label: {
//                                lifestyleDetails(lifestyle: Data.name)
//                            }
//
//                        }
//
//                    }
                ScrollView{
                    LazyVGrid(columns:Columns, spacing: 20){
                        ForEach(lifestyleDate) { Data in
                            ZStack{
                                Rectangle()
                                    .frame(width: 180, height:180)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 10)
                                Image(Data.name)
                                    .resizable()
                                    .frame(width: 180, height: 180)
                                    .blur(radius: 4)
                                    .cornerRadius(25)
                                Text(Data.title)
                                    .bold()
                                    .frame(width:180, height:160, alignment: .bottom)
                                    .foregroundColor(.black)
                                    .font(.title2)
                                ForEach(lifestyleDate) { Datas in
                                    NavigationLink {
                                       lifestyleinfo(mylifestyle: Data)
                                    } label: {
                                        Text("")
                                            .frame(width: 170, height:170)
                                          
                                    }
                                }

                            }
                         
                            }
                        }
                    }
            }.navigationTitle("LifeStyle")
        }
    }
}

struct LIfestyle_Previews: PreviewProvider {
    static var previews: some View {
        LIfestyle()
    }
}
