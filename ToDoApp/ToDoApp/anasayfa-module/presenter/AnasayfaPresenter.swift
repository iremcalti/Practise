//
//  AnasayfaPresenter.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func yapilacaklariYukle() {
        anasayfaInteractor?.tumYapilacaklariAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.isAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(yapilacak_id: Int) {
        anasayfaInteractor?.isSil(yapilacak_id: yapilacak_id)
    }
}
extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacakListe: Array<Yapilacaklar>) {
        anasayfaView?.vieweVeriGonder(yapilacakListe: yapilacakListe)
    }
}
