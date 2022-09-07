//
//  SearchView.swift
//  iCare
//
//  Created by WSS on 31/08/2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Explore")
                    .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
                    .font(.system(size: 30, weight:.bold))
                    .padding()
                    .font(.custom("Chivo", size: 30))
                    .shadow(radius: 5)
                    .foregroundColor(.init("CustomColor"))
                    .background(Rectangle().stroke(.tertiary))
                    .frame(width: 500, height:30)
                Spacer()
            Image("loupe")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300, alignment: .center)
                Spacer()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
