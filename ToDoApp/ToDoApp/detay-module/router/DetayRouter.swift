//
//  DetayRouter.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class DetayRouter : PresenterToRouterDetayProtocol {
    static func createModule(ref: DetayVC) {
        ref.DetayPresenterNesnesi = DetayPresenter()
        ref.DetayPresenterNesnesi?.DetayInteractor = DetayInteractor()
    }
    
}
