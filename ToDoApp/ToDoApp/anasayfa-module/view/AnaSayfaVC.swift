//
//  ViewController.swift
//  ToDoApp
//
//  Created by İrem Çaltı on 13.05.2022.
//

import UIKit

class AnaSayfaVC: UIViewController {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var yapilacakTableView: UITableView!
    
    var yapilacakListe = [Yapilacaklar]()
    
    var anasayfaPresenterNesnesi:ViewToPresenterAnasayfaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        yapilacakTableView.delegate = self
        yapilacakTableView.dataSource = self
        
        veritabaniKopyala()
        
        AnasayfaRouter.createModule(ref: self)
        
        anasayfaPresenterNesnesi?.yapilacaklariYukle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.yapilacaklariYukle()
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let yapilacak = sender as? Yapilacaklar {
                let gidilecekVC = segue.destination as! DetayVC
                gidilecekVC.yapilacak = yapilacak
            }
        }
    }
    
    func veritabaniKopyala(){
        let bundleYolu = Bundle.main.path(forResource: "todo", ofType: ".sqlite")
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            print("Veritabanı zaten var")
        }else{
            do{
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
            }catch{}
        }
    }
}
    extension AnaSayfaVC : PresenterToViewAnasayfaProtocol {
        func vieweVeriGonder(yapilacakListe: Array<Yapilacaklar>) {
            self.yapilacakListe = yapilacakListe
            self.yapilacakTableView.reloadData()
        }
    }
   


extension AnaSayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText)
    }
}

extension AnaSayfaVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yapilacakListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yapilacak = yapilacakListe[indexPath.row]
        
        let hucre = tableView.dequeueReusableCell(withIdentifier: "yapilacakHucre", for: indexPath) as! TableViewHucre
        
        hucre.yapilacakBilgiLabel.text = "\(yapilacak.yapilacak_is!)"
        
        
        return hucre
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil"){
            (action,view,void) in
            let yapilacak = self.yapilacakListe[indexPath.row]
            print("\(yapilacak.yapilacak_is!) silindi")
            
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(yapilacak.yapilacak_is!) silinsin mi?", preferredStyle: .alert)
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in }
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) { action in
                self.anasayfaPresenterNesnesi?.sil(yapilacak_id: yapilacak.yapilacak_id!)
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let yapilacak = yapilacakListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: yapilacak)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
