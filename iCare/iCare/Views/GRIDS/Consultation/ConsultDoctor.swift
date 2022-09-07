//
//  ConsultDoctor.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct ConsultDoctor: View {
    private let Columns2 = [
        GridItem(.flexible(minimum: 170)),
        GridItem(.flexible(minimum: 170)),
    ]
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading){
                Color.white
//                Image("Doctor")
//                    .resizable()
//                    .ignoresSafeArea()
//                    .background(.white)
//                    .blur(radius: 5)
                LazyVGrid(columns:Columns2,spacing: 20){
                    ZStack{
                    ExtractedCView(myTilte: "Neurology")
                    NavigationLink {
                       DoctorsViewing()
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                    ZStack{
                    ExtractedCView(myTilte: "Psychiatry")
                    NavigationLink {
                       DoctorViewing2()
                    } label: {
                        Text("")
                            .frame(width: 170, height:170)
                        
                    }
                }
                }
            }
            .opacity(0.8)
                           .navigationTitle("Consult A Doctor")
                }
               
            }
        }
        
struct ConsultDoctor_Previews: PreviewProvider {
    static var previews: some View {
        ConsultDoctor()
    }
}


struct ExtractedCView: View {
    var myTilte: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 180, height:180)
                .foregroundColor(.white)
                .cornerRadius(25)
                .shadow(radius: 10)
                .padding()
            Image("Doctor")
                .resizable()
                .frame(width: 180, height: 180)
                .blur(radius: 2)
                .cornerRadius(25)
                .padding()
            Text(myTilte)
                .bold()
                .frame(width:180, height:150, alignment: .center)
                .foregroundColor(.black)
                .font(.title3)
                .padding()
        }
    }
}
