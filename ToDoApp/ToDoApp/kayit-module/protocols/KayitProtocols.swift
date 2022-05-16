//
//  KayitProtocols.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

protocol ViewToPresenterKayitProtocol {
    var isKayitInteractor:PresenterToInteractorKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteractorKayitProtocol {
    func isEkle(yapilacak_is:String)
}

protocol PresenterToRouterKayitProtocol {
    static func createModule(ref:KayitVC)
}
