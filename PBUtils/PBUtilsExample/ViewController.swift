//
//  ViewController.swift
//  PBUtilsExample
//
//  Created by Pablo Blanco González on 10/04/2020.
//  Copyright © 2020 PabloBlanco. All rights reserved.
//

import UIKit
import PBUtils

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let array = ["1", "2", "3"]
        print(array[safe: 0])
    }
}

