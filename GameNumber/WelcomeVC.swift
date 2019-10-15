//
//  ViewController.swift
//  GameNumber
//
//  Created by Kyle Fogerty on 10/15/19.
//  Copyright © 2019 Kyle Fogerty. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func toThreeByThree(_ sender: AnyObject){
        performSegue(withIdentifier: "welcometo3", sender: self)
    }


}

