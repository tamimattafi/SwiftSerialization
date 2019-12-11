//
// Created by Zennex on 11/12/2019.
// Copyright (c) 2019 zennex. All rights reserved.
//

import Foundation

class MainView : MainViewProtocol {

    private lazy var presenter: MainPresenterProtocol = MainPresenter(view: self)

    func onStart() {
        presenter.onViewStarted()
    }

    func writeMessage(message: String) {
        print(message)
    }

}