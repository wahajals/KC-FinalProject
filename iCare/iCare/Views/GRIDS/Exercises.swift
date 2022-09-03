//
//  Exercises.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct Exercises: View {
    private let changeableColumns = [
        GridItem(.adaptive(minimum:170))
    ]
    var body: some View {
        VStack{
            HStack{
                ForEach(Query2.allCases, id: \.self){
                    searchQuery in
                    QueryTag2(query2: searchQuery, isSelected: false)
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


struct Exercises_Previews: PreviewProvider {
    static var previews: some View {
        Exercises()
    }
}
