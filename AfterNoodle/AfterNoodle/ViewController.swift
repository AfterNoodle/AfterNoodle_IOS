//
//  ViewController.swift
//  AfterNoodle
//
//  Created by songmho on 2017. 7. 6..
//  Copyright © 2017년 AfterNoodle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UICollectionView!
    var category = ["foo","bar","hi!","foo","bar","hi!"]
    var selectedCtg  = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShopListSegue"{
            let sendtimer=segue.destination as! StoreListViewController
            sendtimer.curCtg = self.selectedCtg
        }
    }
    
}




extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoreCollectionViewCell", for: indexPath as IndexPath) as! StoreCollectionViewCell
        
       // cell.backgroundColor = UIColor.orange
        cell.txtCategory.text = self.category[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedCtg = self.category[indexPath.row]
        self.performSegue(withIdentifier: "ShopListSegue", sender: self)
    }

}
