//
//  CurrencyItem.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import Foundation

protocol ListItemInterface {
    var value: String? { get set }
    var icon: String? { get set }
}

struct ListModel: ListItemInterface {
    var value: String?
    var icon: String?
}
