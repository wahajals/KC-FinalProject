//
//  VideoCard.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct VideoCard: View {
//    var video: Video
    var body: some View {
        ZStack {
            ZStack(alignment: .bottomLeading){
                AsyncImage(url: URL(string:"")) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 250)
                } placeholder: {
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.3))
                        .frame(width: 160, height: 250)
                        .cornerRadius(30)
                    
                }
                VStack(alignment: .leading){
                    Text("32 sec")
                        .font(.caption.bold())
                    
                }
                .foregroundColor(.white)
                .shadow(radius: 20)
                .padding()
            }
            Image(systemName: "play.fill")
                .foregroundColor(.white)
                .font(.title)
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(50)
        }
    }
}

struct VideoCard_Previews: PreviewProvider {
    static var previews: some View {
        VideoCard()
    }
}
