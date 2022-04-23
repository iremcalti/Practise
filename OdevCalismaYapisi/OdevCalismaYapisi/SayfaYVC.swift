//
//  SayfaYVC.swift
//  OdevCalismaYapisi
//
//  Created by İrem Çaltı on 22.04.2022.
//

import UIKit

class SayfaYVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
    }
    
    @IBAction func basaDon(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    }
    

   

