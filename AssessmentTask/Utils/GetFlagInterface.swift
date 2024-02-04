//
//  GetFlagInterface.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 04/02/2024.
//

import Foundation

protocol GetFlagInterface {
    func getFlag(for currency: String) -> String
}

extension GetFlagInterface {
    func getFlag(for currency: String) -> String {
        let base: UInt32 = 127397
        let code = currency.prefix(2).uppercased()

        var flag = ""
        for i in code.unicodeScalars {
            if let scalarValue = UnicodeScalar(base + i.value) {
                flag.append(String(scalarValue))
            }
        }
        return flag
    }
}
