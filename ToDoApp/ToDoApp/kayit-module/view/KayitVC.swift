//
//  KayitVC.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 14.05.2022.
//

import UIKit

class KayitVC: UIViewController {

    @IBOutlet weak var yapilacakIs: UITextField!
    
    var KayitPresenterNesnesi:ViewToPresenterKayitProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        KayitRouter.createModule(ref: self)

        
    }
    

    @IBAction func buttonEkle(_ sender: Any) {
        if let yk = yapilacakIs.text {
            KayitPresenterNesnesi?.ekle(yapilacak_is: yk)
        
    
    }

    }}

