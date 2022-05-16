//
//  KayitInteractor.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class KayitInteractor : PresenterToInteractorKayitProtocol {
    
    let db:FMDatabase?
    
    init (){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func isEkle(yapilacak_is: String) {
        db?.open()
        do{
             try db!.executeUpdate("INSERT INTO yapilacak (yapilacak_is) VALUES (?)", values: [yapilacak_is])
            
        }catch{
            print(error.localizedDescription)
        }
       
       db?.close()
    }
    
}
