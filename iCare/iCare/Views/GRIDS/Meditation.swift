//
//  Meditation.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import SwiftUI

struct Meditation: View {
    private let Columns2 = [
        GridItem(.adaptive(minimum: 170)),
    ]
    var body: some View {
            NavigationView{
                ZStack(alignment: .topLeading){
                    Color.white
                    ScrollView{
                    LazyVGrid(columns:Columns2,spacing: 20){
                        ForEach(MeditationData) { med in
                                ZStack{
                                    Rectangle()
                                        .frame(width: 180, height:180)
                                        .foregroundColor(.white)
                                        .cornerRadius(25)
                                        .shadow(radius: 10)
                                    Image(med.image)
                                        .resizable()
                                        .frame(width: 180, height: 180)
                                        .blur(radius: 2)
                                        .cornerRadius(25)
                                    
                                }
                                ForEach(MeditationData) { medi in
                                    NavigationLink {
                                        LIfestyle()
                                    } label: {
                                        Text("")
                                            .frame(width: 170, height:170)
                                          
                                    }
                                }
                            }
                        
                        }
                }
                .opacity(0.8)
                               .navigationTitle("Meditation")
                    }
                   
                }
        }



struct Meditation_Previews: PreviewProvider {
    static var previews: some View {
        Meditation()
            .environmentObject(AudiouManager())
    }
}
}
