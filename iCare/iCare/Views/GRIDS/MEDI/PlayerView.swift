//
//  PlayerView.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import SwiftUI

struct PlayerView: View {
    @EnvironmentObject var audioManager: AudiouManager
    var meditationVM: MeditationViewModel
    var isPreview: Bool = false
    @State private var value: Double = 0.0
    @Environment(\.dismiss) var dissmis
    @State private var isEditing: Bool = false

    let timer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        ZStack{
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.4)
                .ignoresSafeArea()
            
            VStack(spacing: 32){
                
                HStack {
                    Button {
                        audioManager.stop()
                        dissmis()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                }
                    Spacer()
                }
               
                Text(meditationVM.meditation.title)
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                if let player = audioManager.player{
                    VStack(spacing: 5){
                        Slider(value: $value, in: 0...player.duration){ editting in
                            
                            print("edinting", editting)
                            isEditing = editting
                            if !editting{
                                player.currentTime = value
                            }
                        }
                       .accentColor(.white)
                        
                        HStack{
                            Text(DateComponentsFormatter.positional.string(from: player.currentTime) ?? "0:00")
                            Spacer()
                            Text(DateComponentsFormatter.positional.string(from: player.duration - player.currentTime) ?? "0:00")
                            
                        }
                        .font(.caption)
                        .foregroundColor(.white)
                    }
                    
                    HStack{
                        let color: Color = audioManager.isLooping ? .teal : .white
                        PlaybackControlButton(systemName: "repeat", color: color) {
                            audioManager.toggleLoop()
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "gobackward.10") {
                            player.currentTime -= 10
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: audioManager.isPlaying ? "pause.circle.fill" : "play.circle.fill", fontSize: 44){
                            audioManager.playPause()
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "goforward.10") {
                            player.currentTime += 10
                        }
                        
                        Spacer()
                        
                        PlaybackControlButton(systemName: "stop.fill") {
                            audioManager.stop()
                            dissmis()
                        }
                    }
                }
            }.padding(20)
            
        }
        .onAppear {
//            AudiouManager.shared.startPlayer(track: meditationVM.meditation.track
//            ,isPreview: isPreview)
            audioManager.startPlayer(track: meditationVM.meditation.track
            ,isPreview: isPreview)
        }
        .onReceive(timer) { _ in
            guard let player = audioManager.player, !isEditing else {return}
            value = player.currentTime
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    
    static let meditationVm = MeditationViewModel(meditation: Meditation1.MeditationData)
    
    static var previews: some View {
        PlayerView(meditationVM: meditationVm, isPreview: true)
            .environmentObject(AudiouManager())
    }
}
