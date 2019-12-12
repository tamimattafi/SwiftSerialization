//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

struct Employer : Codable, MakesMoney {
    var name: String
    var position: String
    var companyName: String
    var yearlyIncome: Double

    func toString() -> String {
        "name: \(name), position: \(position), companyName: \(companyName), yearlyIncome: \(yearlyIncome)"
    }
}