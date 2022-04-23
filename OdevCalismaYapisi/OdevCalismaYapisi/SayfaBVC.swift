//
//  SayfaBVC.swift
//  OdevCalismaYapisi
//
//  Created by İrem Çaltı on 22.04.2022.
//

import UIKit

class SayfaBVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
    }
    

    @IBAction func gitY(_ sender: Any) {
        performSegue(withIdentifier: "sayfaYgecis", sender: nil)
        
    }
    
    
    
}
