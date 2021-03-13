//
//  FitnessVC.swift
//  IsaIshangulyyev_HW1
//
//  Created by CTIS Student on 13.03.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class FitnessVC: UIViewController {
    @IBOutlet weak var mView: UIView!

    @IBAction func goBackToSecond(_ sender: UIStoryboardSegue) {}
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var mPickerView: UIPickerView!
    
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
