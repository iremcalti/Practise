//
//  SayfaXVC.swift
//  OdevCalismaYapisi
//
//  Created by İrem Çaltı on 22.04.2022.
//

import UIKit

class SayfaXVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
    }
    
    @IBAction func gitXY(_ sender: Any) {
        performSegue(withIdentifier: "sayfaXYgecis", sender: nil)
    }
    
}
