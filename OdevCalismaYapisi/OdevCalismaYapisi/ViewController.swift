//
//  ViewController.swift
//  OdevCalismaYapisi
//
//  Created by İrem Çaltı on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func gitA(_ sender: Any) {
        performSegue(withIdentifier: "sayfaAgecis", sender: nil)
        
    }
    
    @IBAction func gitX(_ sender: Any) {
        performSegue(withIdentifier: "sayfaXgecis", sender: nil)
    }
    
}

