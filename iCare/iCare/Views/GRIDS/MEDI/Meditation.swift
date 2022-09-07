//
//  Meditation.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import SwiftUI

struct Meditation: View {
    private let Columns2 = [
    GridItem(.flexible(minimum:170)),
    GridItem(.flexible(minimum:170)),
]
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                Color.white
                ScrollView{
                LazyVGrid(columns:Columns2,spacing: 20){
                    ZStack{
                        ExtractedEView(myTilte: "Serenity")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData))
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedEView(myTilte: "Above")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData2))
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedEView(myTilte: "Spiritual")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData3))
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedEView(myTilte: "Catch My Breath")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData4))
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedEView(myTilte: "Mindfulness")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData5))
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedEView(myTilte: "Meditation")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData6))
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedEView(myTilte: "Oceanwaves")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData7))
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedEView(myTilte: "Linear")
                    NavigationLink {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation1.MeditationData8))
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


struct ExtractedEView: View {
    var myTilte: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 180, height:180)
                .foregroundColor(.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                .padding()
            Image("1")
                .resizable()
                .frame(width: 180, height: 180)
                .blur(radius: 2)
                .cornerRadius(25)
                .padding()
            Text(myTilte)
                .bold()
                .frame(width:180, height:150, alignment: .center)
                .foregroundColor(.black)
                .font(.title2)
                .padding()
        }
    }
}
