//
//  lifestyleDetalis.swift
//  iCare
//
//  Created by WSS on 04/09/2022.
//

import SwiftUI

struct lifestyleDetails: View {
    @State var lifestyle: String
    var body: some View {
        HStack{
            Image(lifestyle)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .shadow(radius:30)
                Text(lifestyle)
                .bold()
                .font(.title2)
        }
    }
}

struct lifestyleDetalis_Previews: PreviewProvider {
    static var previews: some View {
        lifestyleDetails(lifestyle: "")
    }
}
