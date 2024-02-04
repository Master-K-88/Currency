//
//  CurrencyList.swift
//  AssessmentTask
//
//  Created by Oko-osi Korede on 04/02/2024.
//

import Foundation

protocol TestData: GetFlagInterface {
    var listTestItem: [ListItemInterface] { get }
}

extension TestData {
    var listTestItem: [ListItemInterface] {
        [
            ListModel(value: "AED", icon: getFlag(for: "AED")),
            ListModel(value: "AFN", icon: getFlag(for: "AFN")),
            ListModel(value: "ALL", icon: getFlag(for: "ALL")),
            ListModel(value: "AMD", icon: getFlag(for: "AMD")),
            ListModel(value: "ANG", icon: getFlag(for: "ANG")),
            ListModel(value: "AOA", icon: getFlag(for: "AOA")),
            ListModel(value: "ARS", icon: getFlag(for: "ARS")),
            ListModel(value: "AUD", icon: getFlag(for: "AUD")),
            ListModel(value: "AWG", icon: getFlag(for: "AWG")),
            ListModel(value: "AZN", icon: getFlag(for: "AZN")),
            ListModel(value: "BAM", icon: getFlag(for: "BAM")),
            ListModel(value: "BBD", icon: getFlag(for: "BBD")),
            ListModel(value: "BDT", icon: getFlag(for: "BDT")),
            ListModel(value: "BGN", icon: getFlag(for: "BGN")),
            ListModel(value: "BHD", icon: getFlag(for: "BHD")),
            ListModel(value: "BIF", icon: getFlag(for: "BIF")),
            ListModel(value: "BMD", icon: getFlag(for: "BMD")),
            ListModel(value: "BND", icon: getFlag(for: "BND")),
            ListModel(value: "BOB", icon: getFlag(for: "BOB")),
            ListModel(value: "BRL", icon: getFlag(for: "BRL")),
            ListModel(value: "BSD", icon: getFlag(for: "BSD")),
            ListModel(value: "BTC", icon: getFlag(for: "BTC")),
            ListModel(value: "BTN", icon: getFlag(for: "BTN")),
            ListModel(value: "BWP", icon: getFlag(for: "BWP")),
            ListModel(value: "BYN", icon: getFlag(for: "BYN")),
            ListModel(value: "BYR", icon: getFlag(for: "BYR")),
            ListModel(value: "BZD", icon: getFlag(for: "BZD")),
            ListModel(value: "CAD", icon: getFlag(for: "CAD")),
            ListModel(value: "CDF", icon: getFlag(for: "CDF")),
            ListModel(value: "CHF", icon: getFlag(for: "CHF")),
            ListModel(value: "CLF", icon: getFlag(for: "CLF")),
            ListModel(value: "CLP", icon: getFlag(for: "CLP")),
            ListModel(value: "CNY", icon: getFlag(for: "CNY")),
            ListModel(value: "COP", icon: getFlag(for: "COP")),
            ListModel(value: "CRC", icon: getFlag(for: "CRC")),
            ListModel(value: "CUC", icon: getFlag(for: "CUC")),
            ListModel(value: "CUP", icon: getFlag(for: "CUP")),
            ListModel(value: "CVE", icon: getFlag(for: "CVE")),
            ListModel(value: "CZK", icon: getFlag(for: "CZK")),
            ListModel(value: "DJF", icon: getFlag(for: "DJF")),
            ListModel(value: "DKK", icon: getFlag(for: "DKK")),
            ListModel(value: "DOP", icon: getFlag(for: "DOP")),
            ListModel(value: "DZD", icon: getFlag(for: "DZD")),
            ListModel(value: "EGP", icon: getFlag(for: "EGP")),
            ListModel(value: "ERN", icon: getFlag(for: "ERN")),
            ListModel(value: "ETB", icon: getFlag(for: "ETB")),
            ListModel(value: "EUR", icon: getFlag(for: "EUR")),
            ListModel(value: "FJD", icon: getFlag(for: "FJD")),
            ListModel(value: "FKP", icon: getFlag(for: "FKP")),
            ListModel(value: "GBP", icon: getFlag(for: "GBP")),
            ListModel(value: "GEL", icon: getFlag(for: "GEL")),
            ListModel(value: "GGP", icon: getFlag(for: "GGP")),
            ListModel(value: "GHS", icon: getFlag(for: "GHS")),
            ListModel(value: "GIP", icon: getFlag(for: "GIP")),
            ListModel(value: "GMD", icon: getFlag(for: "GMD")),
            ListModel(value: "GNF", icon: getFlag(for: "GNF")),
            ListModel(value: "GTQ", icon: getFlag(for: "GTQ")),
            ListModel(value: "GYD", icon: getFlag(for: "GYD")),
            ListModel(value: "HKD", icon: getFlag(for: "HKD")),
            ListModel(value: "HNL", icon: getFlag(for: "HNL")),
            ListModel(value: "HRK", icon: getFlag(for: "HRK")),
            ListModel(value: "HTG", icon: getFlag(for: "HTG")),
            ListModel(value: "HUF", icon: getFlag(for: "HUF")),
            ListModel(value: "IDR", icon: getFlag(for: "IDR")),
            ListModel(value: "ILS", icon: getFlag(for: "ILS")),
            ListModel(value: "IMP", icon: getFlag(for: "IMP")),
            ListModel(value: "INR", icon: getFlag(for: "INR")),
            ListModel(value: "IQD", icon: getFlag(for: "IQD")),
            ListModel(value: "IRR", icon: getFlag(for: "IRR")),
            ListModel(value: "ISK", icon: getFlag(for: "ISK")),
            ListModel(value: "JEP", icon: getFlag(for: "JEP")),
            ListModel(value: "JMD", icon: getFlag(for: "JMD")),
            ListModel(value: "JOD", icon: getFlag(for: "JOD")),
            ListModel(value: "JPY", icon: getFlag(for: "JPY")),
            ListModel(value: "KES", icon: getFlag(for: "KES")),
            ListModel(value: "KGS", icon: getFlag(for: "KGS")),
            ListModel(value: "KHR", icon: getFlag(for: "KHR")),
            ListModel(value: "KMF", icon: getFlag(for: "KMF")),
            ListModel(value: "KPW", icon: getFlag(for: "KPW")),
            ListModel(value: "KRW", icon: getFlag(for: "KRW")),
            ListModel(value: "KWD", icon: getFlag(for: "KWD")),
            ListModel(value: "KYD", icon: getFlag(for: "KYD")),
            ListModel(value: "KZT", icon: getFlag(for: "KZT")),
            ListModel(value: "LAK", icon: getFlag(for: "LAK")),
            ListModel(value: "LBP", icon: getFlag(for: "LBP")),
            ListModel(value: "LKR", icon: getFlag(for: "LKR")),
            ListModel(value: "LRD", icon: getFlag(for: "LRD")),
            ListModel(value: "LSL", icon: getFlag(for: "LSL")),
            ListModel(value: "LTL", icon: getFlag(for: "LTL")),
            ListModel(value: "LVL", icon: getFlag(for: "LVL")),
            ListModel(value: "LYD", icon: getFlag(for: "LYD")),
            ListModel(value: "MAD", icon: getFlag(for: "MAD")),
            ListModel(value: "MDL", icon: getFlag(for: "MDL")),
            ListModel(value: "MGA", icon: getFlag(for: "MGA")),
            ListModel(value: "MKD", icon: getFlag(for: "MKD")),
            ListModel(value: "MMK", icon: getFlag(for: "MMK")),
            ListModel(value: "MNT", icon: getFlag(for: "MNT")),
            ListModel(value: "MOP", icon: getFlag(for: "MOP")),
            ListModel(value: "MRU", icon: getFlag(for: "MRU")),
            ListModel(value: "MUR", icon: getFlag(for: "MUR")),
            ListModel(value: "MVR", icon: getFlag(for: "MVR")),
            ListModel(value: "MWK", icon: getFlag(for: "MWK")),
            ListModel(value: "MXN", icon: getFlag(for: "MXN")),
            ListModel(value: "MYR", icon: getFlag(for: "MYR")),
            ListModel(value: "MZN", icon: getFlag(for: "MZN")),
            ListModel(value: "NAD", icon: getFlag(for: "NAD")),
            ListModel(value: "NGN", icon: getFlag(for: "NGN")),
            ListModel(value: "NIO", icon: getFlag(for: "NIO")),
            ListModel(value: "NOK", icon: getFlag(for: "NOK")),
            ListModel(value: "NPR", icon: getFlag(for: "NPR")),
            ListModel(value: "NZD", icon: getFlag(for: "NZD")),
            ListModel(value: "OMR", icon: getFlag(for: "OMR")),
            ListModel(value: "PAB", icon: getFlag(for: "PAB")),
            ListModel(value: "PEN", icon: getFlag(for: "PEN")),
            ListModel(value: "PGK", icon: getFlag(for: "PGK")),
            ListModel(value: "PHP", icon: getFlag(for: "PHP")),
            ListModel(value: "PKR", icon: getFlag(for: "PKR")),
            ListModel(value: "PLN", icon: getFlag(for: "PLN")),
            ListModel(value: "PYG", icon: getFlag(for: "PYG")),
            ListModel(value: "QAR", icon: getFlag(for: "QAR")),
            ListModel(value: "RON", icon: getFlag(for: "RON")),
            ListModel(value: "RSD", icon: getFlag(for: "RSD")),
            ListModel(value: "RUB", icon: getFlag(for: "RUB")),
            ListModel(value: "RWF", icon: getFlag(for: "RWF")),
            ListModel(value: "SAR", icon: getFlag(for: "SAR")),
            ListModel(value: "SBD", icon: getFlag(for: "SBD")),
            ListModel(value: "SCR", icon: getFlag(for: "SCR")),
            ListModel(value: "SDG", icon: getFlag(for: "SDG")),
            ListModel(value: "SEK", icon: getFlag(for: "SEK")),
            ListModel(value: "SGD", icon: getFlag(for: "SGD")),
            ListModel(value: "SHP", icon: getFlag(for: "SHP")),
            ListModel(value: "SLE", icon: getFlag(for: "SLE")),
            ListModel(value: "SLL", icon: getFlag(for: "SLL")),
            ListModel(value: "SOS", icon: getFlag(for: "SOS")),
            ListModel(value: "SRD", icon: getFlag(for: "SRD")),
            ListModel(value: "STD", icon: getFlag(for: "STD")),
            ListModel(value: "SYP", icon: getFlag(for: "SYP")),
            ListModel(value: "SZL", icon: getFlag(for: "SZL")),
            ListModel(value: "THB", icon: getFlag(for: "THB")),
            ListModel(value: "TJS", icon: getFlag(for: "TJS")),
            ListModel(value: "TMT", icon: getFlag(for: "TMT")),
            ListModel(value: "TND", icon: getFlag(for: "TND")),
            ListModel(value: "TOP", icon: getFlag(for: "TOP")),
            ListModel(value: "TRY", icon: getFlag(for: "TRY")),
            ListModel(value: "TTD", icon: getFlag(for: "TTD")),
            ListModel(value: "TWD", icon: getFlag(for: "TWD")),
            ListModel(value: "TZS", icon: getFlag(for: "TZS")),
            ListModel(value: "UAH", icon: getFlag(for: "UAH")),
            ListModel(value: "UGX", icon: getFlag(for: "UGX")),
            ListModel(value: "USD", icon: getFlag(for: "USD")),
            ListModel(value: "UYU", icon: getFlag(for: "UYU")),
            ListModel(value: "UZS", icon: getFlag(for: "UZS")),
            ListModel(value: "VEF", icon: getFlag(for: "VEF")),
            ListModel(value: "VES", icon: getFlag(for: "VES")),
            ListModel(value: "VND", icon: getFlag(for: "VND")),
            ListModel(value: "VUV", icon: getFlag(for: "VUV")),
            ListModel(value: "WST", icon: getFlag(for: "WST")),
            ListModel(value: "XAF", icon: getFlag(for: "XAF")),
            ListModel(value: "XAG", icon: getFlag(for: "XAG")),
            ListModel(value: "XAU", icon: getFlag(for: "XAU")),
            ListModel(value: "XCD", icon: getFlag(for: "XCD")),
            ListModel(value: "XDR", icon: getFlag(for: "XDR")),
            ListModel(value: "XOF", icon: getFlag(for: "XOF")),
            ListModel(value: "XPF", icon: getFlag(for: "XPF")),
            ListModel(value: "YER", icon: getFlag(for: "YER")),
            ListModel(value: "ZAR", icon: getFlag(for: "ZAR")),
            ListModel(value: "ZMK", icon: getFlag(for: "ZMK")),
            ListModel(value: "ZMW", icon: getFlag(for: "ZMW")),
            ListModel(value: "ZWL", icon: getFlag(for: "ZWL"))
        ]
    }
}
