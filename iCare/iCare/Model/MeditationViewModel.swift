//
//  MeditationViewModel.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import Foundation

final class MeditationViewModel: ObservableObject{
    private(set) var meditation: Meditation1
    
    init(meditation: Meditation1){
        self.meditation = meditation
    }
}


struct Meditation1{
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
}

let MeditationData =
[
    
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 153,track:"serenity",image:"1"),
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 130,track:"above",image:"1"),
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 506,track:"spiritualenergies",image:"1"),
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 600,track:"catchmybreath",image:"1"),
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 598,track:"mindfulness",image:"1"),
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 573,track:"meditation",image:"1"),
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 550,track:"oceanwaves",image:"1"),
    Meditation1(title:"Relaxing Meditation", description:"Clear your mind & slumber into nothingness. Allocate only a few moments for a quick breather",duration: 595,track:"linear",image:"1"),
]
