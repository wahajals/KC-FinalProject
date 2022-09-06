//
//  DoctorViewing2.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI

struct DoctorViewing2: View {
    private let Columns3 = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationView{
            ZStack{
                Image("Doctor")
                    .resizable()
                    .ignoresSafeArea()
                    .background(.white)
                    .blur(radius: 5)
                ScrollView{
                    LazyVGrid(columns:Columns3, spacing: 20){
                        ForEach(DoctorsData2) { Doctor in
                            ZStack{
                                Rectangle()
                                    .frame(width: 180, height:170)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 10)
                                Image(Doctor.name)
                                    .resizable()
                                    .frame(width: 180, height: 170)
                                    .cornerRadius(25)
                                Text(Doctor.name)
                                    .bold()
                                    .frame(width:170, height:120, alignment: .bottom)
                                    .foregroundColor(.primary)
                                ForEach(DoctorsData2) { Doctors in
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
                .navigationTitle("Psychiatry")
        }
           
    }

    }


struct DoctorViewing2_Previews: PreviewProvider {
    static var previews: some View {
        DoctorViewing2()
    }
}
