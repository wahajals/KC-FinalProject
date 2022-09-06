//
//  AwarenessInfo.swift
//  iCare
//
//  Created by WSS on 05/09/2022.
//

import SwiftUI

struct AwarenessInfo: View {
    @Environment(\.openURL) var openURL
    var myAwareness: AwarenessDetails
    var body: some View {
        ZStack{
            Image("Awareness")
                           .resizable()
                           .ignoresSafeArea()
                           .background(.white)
                           .blur(radius: 8)
            VStack{
            Image(myAwareness.name)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 180, height: 200)
                HStack{
                    Button("Resources") {
                        openURL(URL(string: "\(myAwareness.url)")!)
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    .foregroundColor(.black)
                    .accentColor(.white)
                    .padding()
                }
            Text("What is \(myAwareness.name)")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                ScrollView{
                    
                Text(myAwareness.title)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    Text("Cause:")
                        .bold()
                Text(myAwareness.cause)
//                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("Advice:")
                    .bold()
                Text(myAwareness.advices)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    Text("Symptoms:")
                        .bold()
                    ForEach(myAwareness.symptoms, id: \.self) { Data in
                        VStack{
                           
                            Text(Data)
                                .foregroundColor(.white)
                                .bold()
                                .font(.title3)
                                .padding()
                        }
                    }
                    Text("Trriggers:")
                        .bold()
                    ForEach(myAwareness.triggers, id: \.self) { Data in
                        VStack{
                            Text(Data)
                                .foregroundColor(.white)
                                .bold()
                                .font(.title3)
                                .padding()
                        }
                    }
                    
                }
        }
        }
    }
}

struct AwarenessInfo_Previews: PreviewProvider {
    static var previews: some View {
        AwarenessInfo(myAwareness: AwarenessDetails(name: "Migraine", title: "A migraine is a disabling neurological disease that causes a variety of symptoms on one side of your head",cause: "A Migraine cause is not known, recent research suggests it may be due to a surge of neuronal activity through parts of the brain, which results in the sensation of pain", category: "Migraine Guide", triggers: ["irregular Meals","Specific Food","Physical Factors","Hormonal Changes","Emotional Factors","Environmental Conditions"], symptoms: ["Head pain is moderate or severe","The pain may be on one side of the head or both. It could be in the front or in the back","Your head pain causes a throbbing, pounding, or pulsating sensation","Your head pain gets worse with physical activity or any movement","You experience nausea and/or vomiting","You are sensitive to light, noise and/or smells."],advices:"The first step to living well with the disease is to understand the disease and its progression.",url:"https://americanmigrainefoundation.org"))
    }
}

