//
//  ViewController.swift
//  AfterNoodle
//
//  Created by songmho on 2017. 7. 6..
//  Copyright © 2017년 AfterNoodle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillDisappear(_ animated: Bool) {
        var navigationBar = UINavigationBar.appearance()
        navigationBar.tintColor = UIColor(white : 0xDB4C3F, alpha: 1.0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

