//
//  Awareness.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct Awareness: View {
    private let Columns = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                ScrollView{
                    LazyVGrid(columns:Columns, spacing: 20){
                        ForEach(AwarenessData) { Data in
                            ZStack{
                                Rectangle()
                                    .frame(width: 180, height:180)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 10)
                                Image(Data.name)
                                    .resizable()
                                    .frame(width: 170, height: 170)
                                    .blur(radius: 2)
                                    .cornerRadius(25)
                                Text(Data.category)
                                    .bold()
                                    .frame(width:180, height:150, alignment: .bottom)
                                    .foregroundColor(.black)
                                    .font(.title3)
                                ForEach(AwarenessData) { Datas in
                                    NavigationLink {
                                        AwarenessInfo(myAwareness: Data)
                                    } label: {
                                        Text("")
                                            .frame(width: 170, height:170)
                                    }
                                    
                                }
                                
                            }
                        }.navigationTitle("Awareness")
                    }
                }
            }
        }
    }
}

struct Awareness_Previews: PreviewProvider {
    static var previews: some View {
        Awareness()
    }
}
