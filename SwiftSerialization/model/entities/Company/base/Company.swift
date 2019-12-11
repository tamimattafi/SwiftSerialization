//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

struct Company : MakesMoney  {
    var name: String
    var type: String
    var employers: Array<Employer>
    var yearlyIncome: Double
}