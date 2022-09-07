//
//  HealthTrackerView.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import SwiftUI

struct HealthTrackerView: View {
    private let Columns2 = [
        GridItem(.flexible(minimum: 170)),
        GridItem(.flexible(minimum: 170)),
    ]
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                Color.white
                LazyVGrid(columns:Columns2,spacing: 20){
                    ZStack{
                    ExtractedAView(myTilte: "Diary")
                    NavigationLink {
                       Diary()
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                    ExtractedAView(myTilte: "Pills Reminder")
                    NavigationLink {
                       
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                }
            }
            .opacity(0.8)
                           .navigationTitle("Health Tracker")
                }
               
            }
        }
        



struct HealthTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        HealthTrackerView()
    }
}

struct ExtractedAView: View {
    var myTilte: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 180, height:180)
                .foregroundColor(.black)
                .cornerRadius(25)
                .shadow(radius: 10)
                .padding()
            Image("Health Tracker")
                .resizable()
                .frame(width: 180, height: 180)
                .blur(radius: 2)
                .cornerRadius(25)
                .padding()
            Text(myTilte)
                .bold()
                .frame(width:180, height:150, alignment: .bottom)
                .foregroundColor(.white)
                .font(.title)
                .padding()
        }
    }
}
