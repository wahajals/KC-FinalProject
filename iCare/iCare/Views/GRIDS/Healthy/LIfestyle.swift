//
//  LIfestyle.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct LIfestyle: View {
    private let Columns2 = [
        GridItem(.flexible(minimum:170)),
        GridItem(.flexible(minimum:170)),
    ]
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                Color.white
                LazyVGrid(columns:Columns2,spacing: 20){
                    ZStack{
                        ExtractedBView(myTilte: "Healthy Food", myImgae: "Lifestyle")
                    NavigationLink {
                       LifestyleViewing()
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedBView(myTilte: "Gym", myImgae: "Lifestyle")
                    NavigationLink {
                       LifestyleViewing2()
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                        ExtractedBView(myTilte: "Courses", myImgae: "Lifestyle")
                    NavigationLink {
                       LifestyleViewing3()
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                }
            }
            .opacity(0.8)
                           .navigationTitle("LifeStyle")
                }
               
            }
        }
        
struct LIfestyle_Previews: PreviewProvider {
    static var previews: some View {
        LIfestyle()
    }
}

struct ExtractedBView: View {
    var myTilte: String
    var myImgae: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 180, height:180)
                .foregroundColor(.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                .padding()
            Image(myImgae)
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
