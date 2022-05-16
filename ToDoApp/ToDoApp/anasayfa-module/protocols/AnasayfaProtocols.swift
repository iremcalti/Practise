//
//  AnasayfaProtocols.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func yapilacaklariYukle()
    func ara(aramaKelimesi:String)
    func sil(yapilacak_id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumYapilacaklariAl()
    func isAra(aramaKelimesi:String)
    func isSil(yapilacak_id:Int)
    
}
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yapilacakListe:Array<Yapilacaklar>)
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yapilacakListe:Array<Yapilacaklar>)
}

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnaSayfaVC)
}
