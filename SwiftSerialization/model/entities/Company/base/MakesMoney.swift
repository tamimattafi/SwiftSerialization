//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

protocol MakesMoney {
    var yearlyIncome: Double { get set }
    func getIncome(years: Int) -> Double
}

extension MakesMoney {
    func getIncome(years: Int) -> Double {
        yearlyIncome * Double(years)
    }
}