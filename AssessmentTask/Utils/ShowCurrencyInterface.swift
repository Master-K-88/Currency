//
//  ShowCurrencyInterface.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 03/02/2024.
//

import RxSwift
import RxCocoa

protocol ShowCurrencyOptions: AnyObject, UIPickerViewDelegate {
    var currencies: [ListModel] { get set }
    var disposeBag: DisposeBag { get set }
}
