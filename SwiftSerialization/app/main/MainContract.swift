//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

protocol MainViewProtocol {
    func writeMessage(message: String)
}

protocol MainPresenterProtocol {
    func onViewStarted()
}