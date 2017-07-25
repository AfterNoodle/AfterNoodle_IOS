//
//  StoreListViewController.swift
//  AfterNoodle
//
//  Created by songmho on 2017. 7. 18..
//  Copyright © 2017년 AfterNoodle. All rights reserved.
//

import UIKit

class StoreListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var shopList = ["foo","bar","hi!","foo","bar","hi!",]
    var curCtg :String =  ""
    var selectedShop : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = self.curCtg
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
       /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShopDetailSegue"{
            let sendtimer=segue.destination as! StoreDetailViewController
            sendtimer.curShop = self.selectedShop
        }
    }

}

extension StoreListViewController:UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return self.shopList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoreListTableViewCell", for: indexPath as IndexPath) as! StoreListTableViewCell
        
        cell.txtShopName.text = self.shopList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedShop = self.shopList[indexPath.row]
        self.performSegue(withIdentifier: "ShopDetailSegue", sender: self)
    }
}
