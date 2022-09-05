//
//  ConsultDoctor.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct ConsultDoctor: View {
    private let Columns = [
        GridItem(.adaptive(minimum: 170))
    ]
    @State var Tap = ""
    var body: some View {
        NavigationView{
            ZStack{
//                LinearGradient(gradient: Gradient(colors: [Color.init("CustomColor"),Color.init("CustomColor2")]), startPoint: .top, endPoint: .bottom)
//                    .ignoresSafeArea()
//                    .background(.white)
//                    .blur(radius: 10)
                Image("Doctor")
                    .resizable()
                    .ignoresSafeArea()
                    .background(.white)
                    .blur(radius: 5)
                ScrollView{
                    LazyVGrid(columns:Columns, spacing: 20){
                        ForEach(DoctorsData) { Doctor in
                            ZStack{
                                Rectangle()
                                    .frame(width: 180, height:180)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 10)
                                Image(Doctor.name)
                                    .resizable()
                                    .frame(width: 180, height: 180)
                                    .cornerRadius(25)
                                Text(Doctor.name)
                                    .bold()
                                    .frame(width:180, height:120, alignment: .bottom)
                                    .foregroundColor(.primary)
                                Text(Doctor.types)
                                    .bold()
                                    .frame(width:170, height:170, alignment: .bottom)
                                    .foregroundColor(.primary)
                               
                                ForEach(DoctorsData) { Doctors in
                                    NavigationLink {
                                        DoctorsInfo( myDoctors: Doctor)
                                    } label: {
                                        Text("")
                                            .frame(width: 170, height:170)
                                          
                                    }
                                }

                            }
                         
                            }
                        }
                    }
            }.opacity(0.8)
                .navigationTitle("Consult A Doctor")
        }
           
    }


struct ConsultDoctor_Previews: PreviewProvider {
    static var previews: some View {
        ConsultDoctor()
    }
}
}
