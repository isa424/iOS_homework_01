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
    @IBOutlet weak var mHeight: UITextField!
    @IBOutlet weak var mWeight: UITextField!
    @IBOutlet weak var mHeightMetric: UISegmentedControl!
    @IBOutlet weak var mWeightMetric: UISegmentedControl!
    @IBOutlet weak var mGenderMale: UISwitch!
    @IBOutlet weak var mCalculateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: UIButton) {
        let mAlert = UIAlertController(title: "Title", message: "Messasge", preferredStyle: .alert)
        let mAction = UIAlertAction(title: "Yes", style: .default, handler: nil)

        mAlert.addAction(mAction)
        self.present(mAlert, animated: true)
    }
    
    @IBAction func onHeightSegmentChange(_ sender: UISegmentedControl) {
        switch mHeightMetric.selectedSegmentIndex {
        case 0:
            mHeight.placeholder = "cm"
            break
        case 1:
            mHeight.placeholder = "feet"
            break
        case 2:
            mHeight.placeholder = "inch"
            break
        default:
            break
        }
    }
    
    @IBAction func onWeightSegmentChange(_ sender: UISegmentedControl) {
        switch mWeightMetric.selectedSegmentIndex {
        case 0:
            mWeight.placeholder = "kg"
            break
        case 1:
            mWeight.placeholder = "lbs"
            break
        case 2:
            mWeight.placeholder = "stone"
            break
        default:
            break
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
