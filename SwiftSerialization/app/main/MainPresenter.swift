//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

class MainPresenter : MainPresenterProtocol {

    private let jsonEncoder: JSONEncoder = JSONEncoder()
    private let view: MainViewProtocol
    private var zennex: Company = Company(name: "Zennex!", type: "IT", employers: [], yearlyIncome: 320000000)

    private lazy var androidDeveloper: Employer = Employer(name: "Jeff", company: zennex)
    private lazy var iosDeveloper: Employer = Employer(name: "Mark", company: zennex)
    private lazy var reactNativeDeveloper: Employer = Employer(name: "Carl", company: zennex)

    func onViewStarted() {
        zennex.employers += [androidDeveloper, iosDeveloper, reactNativeDeveloper]
        view.writeMessage(message: "Serialization of zennex company")
    }

    init(view: MainViewProtocol) {
        self.view = view
    }

}