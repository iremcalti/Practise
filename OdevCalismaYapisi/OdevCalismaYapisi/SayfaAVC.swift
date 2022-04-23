//
//  SayfaAVC.swift
//  OdevCalismaYapisi
//
//  Created by İrem Çaltı on 22.04.2022.
//

import UIKit

class SayfaAVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
    }
    

    
    @IBAction func gitB(_ sender: Any) {
        performSegue(withIdentifier: "sayfaBgecis", sender: nil)
    }
    
}
