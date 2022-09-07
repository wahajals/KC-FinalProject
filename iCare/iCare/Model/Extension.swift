//
//  Extension.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import Foundation

extension DateComponentsFormatter{
    static let abbreviated: DateComponentsFormatter = {
        print("Initialiazing DataComponentsFormatter.abbreviated")
        
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour,.minute,.second]
        formatter.unitsStyle = .abbreviated
        
        return formatter
    }()
    
    static let positional: DateComponentsFormatter = {
        print("Initialiazing DataComponentsFormatter.positional")
        
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.minute,.second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
}
