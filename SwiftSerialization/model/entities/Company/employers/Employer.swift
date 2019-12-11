//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

struct Employer : MakesMoney {

    var name: String
    var company: Company?
    var yearlyIncome: Double {
        get {
            if company != nil {
               return company!.yearlyIncome / Double(company!.employers.count)
            } else { return 0 }
        } set {}
    }

}