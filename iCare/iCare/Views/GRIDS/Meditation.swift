//
//  Meditation.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct Meditation: View {
    private let changeableColumns = [
        GridItem(.adaptive(minimum:170))
    ]
    var body: some View {
        VStack{
            HStack{
                ForEach(Query.allCases, id: \.self){
                    searchQuery in
                    QueryTag(query: searchQuery, isSelected: false)
                }
                .padding()
            }
            ScrollView{
                
                    LazyVGrid(columns: changeableColumns,spacing: 20){
                        ForEach(0..<8) { video in
                        VideoCard()
                        }
                    }
                      
                }
                
            }
            .frame(maxWidth: .infinity)
            .background(Color("CustomColor")).opacity(0.5)
        }
    }


struct Meditation_Previews: PreviewProvider {
    static var previews: some View {
        Meditation()
    }
}
