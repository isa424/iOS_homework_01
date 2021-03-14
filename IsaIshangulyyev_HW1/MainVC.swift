//
//  ViewController.swift
//  IsaIshangulyyev_HW1
//
//  Created by CTIS Student on 13.03.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBAction func goBackToFirst(_ sender: UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onDoubleTap(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "second", sender: self)
    }
}
