//
//  DoctorsInfo.swift
//  iCare
//
//  Created by WSS on 04/09/2022.
//

import SwiftUI

struct DoctorsInfo: View {
    @Environment(\.openURL) var openURL
    var myDoctors: Doctors
    var body: some View {
        ZStack{
            Image("Doctor")
                .resizable()
                .ignoresSafeArea()
                .background(.white)
                .blur(radius: 8)
            VStack{
                Image(myDoctors.name)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 200, height: 200)
                Text(myDoctors.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                Text(myDoctors.title)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                
                HStack{
                    Button("Book An Appointment") {
                        openURL(URL(string: myDoctors.url)!)
                    }
                    
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    .foregroundColor(.black)
                    .accentColor(.white)
                    .padding()
                }
              
                Text("Diagnosis & Management of :")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.black)

                ScrollView{
                    VStack{
                        ForEach(myDoctors.Speciality, id: \.self) { speciality in
                            VStack{
                                Text(speciality)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title2)
                                    .padding()
                            }
                        }
                    }
                }.padding()
                Spacer()
            }
            
        }
    }
}


struct DoctorsInfo_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsInfo(myDoctors: Doctors(name: "Dr. Khalid Al-Hassan",title: "Neurology Consultant & Vascular Specialist", Speciality: ["Stroke","Movement Disorder","Headache","Multiple Sclerosis","Muscle Diseases & Peripheral nerve disorder","Dementia"], types: "Neurology", url: "https://www.sih-kw.com/en/Find-Doctor/244/Dr-Khalid-Al-Hassan", number: ["1830003"]))
    }
}
