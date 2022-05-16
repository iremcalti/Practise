//
//  DetayProtocols.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

protocol ViewToPresenterDetayProtocol {
    var DetayInteractor:PresenterToInteractorDetayProtocol? {get set}
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}
protocol PresenterToInteractorDetayProtocol {
    func isGuncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToRouterDetayProtocol {
    static func createModule(ref:DetayVC)
}
