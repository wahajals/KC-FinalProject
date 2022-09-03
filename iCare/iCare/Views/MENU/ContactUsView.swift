//
//  ContactUsView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI
import MessageUI
struct ContactUsView: View {
    var body: some View {
        VStack{
            Text("iCare")
                .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
                .font(.system(size: 80, weight:.bold))
                .padding()
                .font(.custom("Chivo", size: 80))
                .shadow(radius: 5)
                .foregroundColor(.init("CustomColor"))
                .background(Rectangle().stroke(.tertiary))
                .frame(width: 500, height:40)
                .padding()
                .padding(.bottom,50)
            Text("Contact US:")
                .font(.title)
                .bold()
                .frame(width: 350,alignment: .bottomLeading)
            Image("Icon-1024")
                .resizable()
                .scaledToFit()
                .frame(width: 500, height: 300,alignment:.top)
                .padding()
            
            Spacer()
               
        }
    }
}
struct ContactUsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactUsView()
    }
}


