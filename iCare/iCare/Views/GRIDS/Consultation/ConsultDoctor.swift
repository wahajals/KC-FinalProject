//
//  ConsultDoctor.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct ConsultDoctor: View {
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
                List{
                    
                        ForEach(DoctorsData) { Doctor in
                            NavigationLink {
                                DoctorsInfo(myDoctors: Doctor)
                            } label: {
                                DoctorsDetails(Doctors: Doctor.name)
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
