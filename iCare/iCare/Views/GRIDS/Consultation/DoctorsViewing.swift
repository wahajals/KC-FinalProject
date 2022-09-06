//
//  DoctorsViewing.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI
struct DoctorsViewing: View {
private let Columns1 = [
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
            LazyVGrid(columns:Columns1, spacing: 20){
                ForEach(DoctorsData) { Doctor in
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
                            .frame(width:180, height:120, alignment: .bottom)
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
        .navigationTitle("Neurology")
}
   
}

}

struct DoctorsViewing_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsViewing()
    }
}


