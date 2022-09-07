//
//  OurMissionView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct OurMissionView: View {
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
                .frame(width: 500, height:1)
                .padding()
                .padding(.bottom,50)
            Text("Our Mission:")
                .font(.title)
                .bold()
                .frame(width: 350,alignment: .bottomLeading)
            Image("Icon-1024")
                .resizable()
                .scaledToFit()
                .frame(width: 500, height: 300,alignment:.top)
                .padding()
            Text("We Aspire to improve the living of all target categories, In order to provide them with a better, easier and more comfortable life. ")
                .font(.custom("Chivo-Black",size: 25))
                .frame(alignment: .center)
                .shadow(radius: 10)
                .foregroundColor(.primary)
                .padding()
            Spacer()
            
        }
    }
}

struct OurMissionView_Previews: PreviewProvider {
    static var previews: some View {
        OurMissionView()
    }
}
