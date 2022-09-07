//
//  MeditationView.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import SwiftUI

struct MeditationView: View {
    @State private var showPlayer = false
    @StateObject var meditationVM: MeditationViewModel
    var body: some View {
        VStack(spacing: 0){
            Image(meditationVM.meditation.image)
                .resizable()

                .frame(height: UIScreen.main.bounds.height / 3)
            
            
            ZStack {
                Color.black
                
                VStack(alignment: .leading, spacing: 24){
                    VStack(alignment: .leading, spacing: 8){
                        Text("Music")
                        
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration) ?? meditationVM.meditation.duration.formatted() + "S")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical,10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }

                    
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                    
                }.foregroundColor(.white)
                    .padding(20)
                
              
                
            }.frame(height: UIScreen.main.bounds.height * 2 / 3)
                
        }.ignoresSafeArea()
            .fullScreenCover(isPresented: $showPlayer) {
                PlayerView(meditationVM: meditationVM)
            }
    }
}

struct MeditationView_Previews: PreviewProvider {
    
    static let meditationVm = MeditationViewModel(meditation:  Meditation1.MeditationData)
    
    static var previews: some View {
        MeditationView(meditationVM: meditationVm)
            .environmentObject(AudiouManager())
    }
}
