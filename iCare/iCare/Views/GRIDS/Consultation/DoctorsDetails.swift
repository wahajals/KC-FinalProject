//
//  DoctorsDetails.swift
//  iCare
//
//  Created by WSS on 04/09/2022.
//

import SwiftUI

struct DoctorsDetails: View {
    @State var Doctors: String
    var body: some View {
            HStack{
                Image(Doctors)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                    .shadow(radius:30)
                    Text(Doctors)
                    .bold()
                    .font(.title2)
            }
        }
    }


struct DoctorsDetails_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsDetails(Doctors: "")
    }
}
