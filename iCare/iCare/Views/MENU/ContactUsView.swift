//
//  ContactUsView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI
import MessageUI
struct ContactUsView: View {
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack{
            Text("iCare")
                .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
                .font(.system(size: 60, weight:.bold))
                .padding()
                .font(.custom("Chivo", size: 60))
                .shadow(radius: 5)
                .foregroundColor(.init("CustomColor"))
                .background(Rectangle().stroke(.tertiary))
                .frame(width: 500, height:60)
                .padding()
                .padding(.bottom,50)
            Text("Contact US:")
                .font(.title)
                .bold()
                .frame(width: 350,alignment: .bottomLeading)
            Image("Icon-1024")
                .resizable()
                .scaledToFit()
                .frame(width: 500, height: 250,alignment:.top)
                .padding()
            
            HStack{
                Button("Contact Us") {
                    openURL(URL(string: "iCare@gmail.com")!)
                }
                
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 20))
                .foregroundColor(.black)
                .accentColor(.teal)
                .padding()
            }
            
            
            Spacer()
               
        }
    }
}
struct ContactUsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactUsView()
    }
}


