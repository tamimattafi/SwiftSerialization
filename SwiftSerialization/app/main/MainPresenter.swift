//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

class MainPresenter : MainPresenterProtocol {

    private let jsonEncoder: JSONEncoder = JSONEncoder()
    private let jsonDecoder: JSONDecoder = JSONDecoder()
    private let view: MainViewProtocol

    func onViewStarted() {
        let company = prepareCompany()
        view.writeMessage(message: "Serialization of the company\n")
        let jsonData = try! jsonEncoder.encode(company)
        let jsonString = String(data: jsonData, encoding: .utf8)!
        view.writeMessage(message: jsonString)
        usleep(1000000)
        view.writeMessage(message: "\n\nDeserialization of the json to a company object\n")
        let companyFromJson = try! jsonDecoder.decode(Company.self, from: jsonString.data(using: .utf8)!)
        view.writeMessage(message: companyFromJson.toString())

    }

    private func prepareCompany() -> Company {
        let companyName = "Zennex!"
        return Company(name: companyName, type: "IT", employers: [
            Employer(name: "Jeff", position: "Android Developer", companyName: companyName, yearlyIncome: 700000),
            Employer(name: "Mark", position: "iOS Developer", companyName: companyName, yearlyIncome: 700000),
            Employer(name: "Carl", position: "ReactNative Developer", companyName: companyName, yearlyIncome: 700000)
        ], yearlyIncome: 320000000)
    }

    init(view: MainViewProtocol) {
        self.view = view
    }

}