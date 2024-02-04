//
//  CurrencyConverterViewModel.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 04/02/2024.
//

import RxSwift
import RxCocoa

class CurrencyConverterViewModel {
    var currencies: BehaviorRelay<[ListItemInterface]> = BehaviorRelay(value: [])
    var disposeBag: DisposeBag = DisposeBag()
    
    init() {
        currencies.accept(listTestItem)
    }
}

extension CurrencyConverterViewModel: SampleData { }
extension CurrencyConverterViewModel: TestData { }
