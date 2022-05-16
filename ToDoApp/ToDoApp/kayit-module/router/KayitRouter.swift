//
//  KayitRouter.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class KayitRouter : PresenterToRouterKayitProtocol {
    static func createModule(ref: KayitVC) {
        ref.KayitPresenterNesnesi = KayitPresenter()
        ref.KayitPresenterNesnesi?.isKayitInteractor = KayitInteractor()
    }
    
}
