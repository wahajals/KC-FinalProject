//
//  SideMenuHeaderView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("user")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width:64, height: 64)
                .padding(.bottom,16)
        
            Text("Wahaj Alsallal")
                .font(.system(size: 24, weight: .semibold))
            
            Text("View Profile")
                .font(.system(size: 14))
                .padding(.bottom, 24)
            HStack{
                Spacer()
            }
          Spacer()
            
        }
        .padding()
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
