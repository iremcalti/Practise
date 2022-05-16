//
//  AnasayfaInteractor.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init (){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
   
    func tumYapilacaklariAl() {
        db?.open()
        var liste = [Yapilacaklar]()
        do{
            let rs = try db!.executeQuery("SELECT * FROM yapilacak", values: nil)
            
            while rs.next() {
                let yapilacak = Yapilacaklar(yapilacak_id: Int(rs.string(forColumn: "yapilacak_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacakListe: liste)
            
        }catch{
            print(error.localizedDescription)
        }
       
       db?.close()
    }
   
    func isAra(aramaKelimesi: String) {
        db?.open()
        var liste = [Yapilacaklar]()
        do{
            let rs = try db!.executeQuery("SELECT * FROM yapilacak WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)
            
            while rs.next() {
                let yapilacak = Yapilacaklar(yapilacak_id: Int(rs.string(forColumn: "yapilacak_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacakListe: liste)
            
        }catch{
            print(error.localizedDescription)
        }
       
       db?.close()
    }
   
    func isSil(yapilacak_id: Int) {
        db?.open()
        do{
             try db!.executeUpdate("DELETE FROM yapilacak WHERE yapilacak_id = ?", values: [yapilacak_id])
            tumYapilacaklariAl()
            
        }catch{
            print(error.localizedDescription)
        }
       
       db?.close()
    }
}
    
    

