//
//  DetayInteractor.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 16.05.2022.
//

import Foundation

class DetayInteractor : PresenterToInteractorDetayProtocol {
    let db:FMDatabase?
    
    init (){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func isGuncelle(yapilacak_id: Int, yapilacak_is: String) {
        db?.open()
        do{
             try db!.executeUpdate("UPDATE yapilacak SET yapilacak_is = ? WHERE yapilacak_id = ?", values: [yapilacak_is,yapilacak_id])
            
        }catch{
            print(error.localizedDescription)
        }
       
       db?.close()
    }
    
}
