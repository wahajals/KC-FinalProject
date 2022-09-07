//
//  LifestyleViewing.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI

struct LifestyleViewing: View {
    private let Columns = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationView{
            ZStack{
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
                                    .blur(radius: 2)
                                    .cornerRadius(25)
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
            }.navigationTitle("Healthy Food")
        }
    }
}




struct LifestyleViewing_Previews: PreviewProvider {
    static var previews: some View {
        LifestyleViewing()
    }
}
