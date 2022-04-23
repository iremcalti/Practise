//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by İrem Çaltı on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hesaplama: UILabel!
    
    @IBOutlet weak var sonuc: UILabel!
    
    var calisiyor: String = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sifirla()
    }
    
    func sifirla(){
        calisiyor = " "
        hesaplama.text = " "
        sonuc.text = " "
    }
    
    @IBAction func sifirlamaTikla(_ sender: Any) {
        sifirla()
    }
    func calisiyorEkle (value: String){
        calisiyor = calisiyor + value
        hesaplama.text = calisiyor
    }
    
    @IBAction func esittirTikla(_ sender: Any) {
        let expression = NSExpression(format: calisiyor)
        let calisiyor = expression.expressionValue(with: nil, context: nil) as! Int
        
     
        let calisiyorString = esit(calisiyor: calisiyor)
        sonuc.text = calisiyorString
    }
    
    func esit(calisiyor: Int) -> String {
        
    
    
        return String(calisiyor)
    
        
    }
       
    
    @IBAction func toplamaTikla(_ sender: Any) {
        calisiyorEkle(value: "+")
    }
   
    
    @IBAction func sifirTikla(_ sender: Any) {
        calisiyorEkle(value: "0")
    }
    
    @IBAction func birTikla(_ sender: Any) {
        calisiyorEkle(value: "1")
    }
    
    @IBAction func ikiTikla(_ sender: Any) {
        calisiyorEkle(value: "2")
    }
    @IBAction func ucTikla(_ sender: Any) {
        calisiyorEkle(value: "3")
    }
    
    @IBAction func dortTikla(_ sender: Any) {
        calisiyorEkle(value: "4")
    }
    
    @IBAction func besTikla(_ sender: Any) {
        calisiyorEkle(value: "5")
    }
    
    @IBAction func altiTikla(_ sender: Any) {
        calisiyorEkle(value: "6")
    }
    @IBAction func yediTikla(_ sender: Any) {
        calisiyorEkle(value: "7")
    }
    
    @IBAction func sekizTikla(_ sender: Any) {
        calisiyorEkle(value: "8")
    }
    
    @IBAction func dokuzTikla(_ sender: Any) {
        calisiyorEkle(value: "9")
    }
    
    
  
}

