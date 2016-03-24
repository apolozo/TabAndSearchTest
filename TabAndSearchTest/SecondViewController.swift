//
//  SecondViewController.swift
//  TabAndSearchTest
//
//  Created by Albert Bori on 4/30/15.
//  Copyright (c) 2015 albertbori. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.visibleViewController?.title = "Second View"
    }
}

