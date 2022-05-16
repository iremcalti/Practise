//
//  KayitPresenter.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class KayitPresenter : ViewToPresenterKayitProtocol {
    var isKayitInteractor: PresenterToInteractorKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        isKayitInteractor?.isEkle(yapilacak_is: yapilacak_is)
    }
    
}
