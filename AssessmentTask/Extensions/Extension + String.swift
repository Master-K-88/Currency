//
//  Extension + String.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import Foundation

extension String {
    var doubleValue: Double {
        return Double(self) ?? 0
    }
    
    var formattedCurrency: Self {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .scientific
        numberFormatter.usesGroupingSeparator = true
        
        let doubleValue = self.doubleValue
        return numberFormatter.string(from: doubleValue as NSNumber) ?? ""
    }
}

extension Double {
    
}
