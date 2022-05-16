//
//  DetayPresenter.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class DetayPresenter : ViewToPresenterDetayProtocol {
    var DetayInteractor: PresenterToInteractorDetayProtocol?
    
    func guncelle(yapilacak_id: Int,yapilacak_is:String){
        DetayInteractor?.isGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
    
}

