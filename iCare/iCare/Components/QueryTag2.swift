//
//  QueryTag2.swift
//  iCare
//
//  Created by WSS on 03/09/2022.
//

import SwiftUI

struct QueryTag2: View {
    var query2: Query2
    var isSelected:Bool
    var body: some View {
        Text(query2.rawValue)
            .font(.caption)
            .bold()
            .foregroundColor(isSelected ? .black : .gray)
            .padding(10)
            .background(.thinMaterial)
            .cornerRadius(10)
        
    }
}

struct QueryTag2_Previews: PreviewProvider {
    static var previews: some View {
        QueryTag2(query2: Query2.balance, isSelected: true)
    }
}
