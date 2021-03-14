//
//  FitnessVC.swift
//  IsaIshangulyyev_HW1
//
//  Created by CTIS Student on 13.03.2021.
//  Copyright © 2021 CTIS. All rights reserved.
//

import UIKit

class FitnessVC: UIViewController {
    let heightMetricTypes = ["cm", "feet", "inch"]
    let weightMetricTypes = ["kg", "lbs", "stone"]
    @IBOutlet weak var mView: UIView!
    @IBOutlet weak var mView2: UIView!
    @IBOutlet weak var mHeight: UITextField!
    @IBOutlet weak var mWeight: UITextField!
    @IBOutlet weak var mHeightMetric: UISegmentedControl!
    @IBOutlet weak var mWeightMetric: UISegmentedControl!
    @IBOutlet weak var mGenderMale: UISwitch!
    @IBOutlet weak var mCalculateBtn: UIButton!

    @IBAction func goBackToSecond(_ sender: UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()

        mView.layer.cornerRadius = 5
        mView.layer.borderWidth = 1
        mView.layer.shadowOpacity = 125
        mView.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        mView2.layer.cornerRadius = 5
        mView2.layer.borderWidth = 1
        mView2.layer.shadowOpacity = 125
        mView2.layer.shadowOffset = CGSize(width: 5, height: 5)
//        mView.layer.shadowOffset
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: UIButton) {
//        var message = ""
//        message = "Height is \(mHeight.text); "
//        let mHeightType = mHeightMetric.selectedSegmentIndex
        let mAlert = UIAlertController(title: "Title", message: "Messasge", preferredStyle: .alert)
        let mAction = UIAlertAction(title: "Yes", style: .default, handler: nil)

        mAlert.addAction(mAction)
        self.present(mAlert, animated: true)
        
        
    }
    
    @IBAction func onHeightSegmentChange(_ sender: UISegmentedControl) {
        mHeight.placeholder = heightMetricTypes[mHeightMetric.selectedSegmentIndex]
    }
    
    @IBAction func onWeightSegmentChange(_ sender: UISegmentedControl) {
            print(mWeightMetric.selectedSegmentIndex)
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
