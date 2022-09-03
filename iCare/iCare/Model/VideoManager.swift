//
//  VideoManager.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import Foundation

enum Query: String,CaseIterable{
    case yoga, gymnastics
}

enum Query2: String, CaseIterable{
    case strength, balance, flexiblility
}

struct ResponseBody: Decodable {
    var page: Int
    var perPage: Int
    var totalResults: Int
    var url: String
    var videos: [Video]
}

struct Video: Identifiable, Decodable{
    var id: Int
    var image: String
    var duration: String
    var user: String
    var videoFile: [videoFile]

    
    struct user: Identifiable,Decodable{
        var id: Int
        var name: String
        var url: String
    }
    
    struct videoFile: Identifiable,Decodable{
        var id: Int
        var quality: String
        var filetype: String
        var link: String
    }
}
