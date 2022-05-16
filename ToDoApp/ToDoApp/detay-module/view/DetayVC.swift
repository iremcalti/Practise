//
//  DetayVC.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 14.05.2022.
//

import UIKit

class DetayVC: UIViewController {

    @IBOutlet weak var yapilacakIs: UITextField!
    
    var yapilacak:Yapilacaklar?
    var DetayPresenterNesnesi:ViewToPresenterDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let y = yapilacak {
            yapilacakIs.text = y.yapilacak_is
            }

        DetayRouter.createModule(ref: self)
        
    }
    

   
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let yk = yapilacakIs.text, let y = yapilacak {
            DetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yk)
        }
    }
    
    
    }

