//
//  SideMenuOptionView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel: SideMenu
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height:24)
            
            Text(viewModel.title)
                .font(.system(size: 15, weight:.semibold))
            Spacer()
        }.foregroundColor(.white)
        .padding()
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(viewModel: .Home)
    }
}
