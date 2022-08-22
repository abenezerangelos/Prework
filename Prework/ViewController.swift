//
//  ViewController.swift
//  Prework
//
//  Created by Abenezer Fetsum on 8/4/22.
//

import UIKit
import CallKit

class ViewController: UIViewController {
    @IBOutlet weak var billing_label: UILabel!
    
    @IBOutlet weak var tip_label: UILabel!
    
    @IBOutlet var segment_controller: UISegmentedControl!
    @IBOutlet weak var total_label: UILabel!
    @IBOutlet var total_display: UILabel!
    @IBOutlet var tip_display: UILabel!
    @IBOutlet var bill_amount_entry: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculate_tip(_ sender: Any) {
        let segment_array = [0.15,0.18,0.2]
        let  tip = segment_array[segment_controller.selectedSegmentIndex] * (Double( bill_amount_entry.text!) ?? 0)
        
        tip_display.text=String(format:"$%.2f" ,  tip)
        print(tip)
        total_display.text = String(format:"$%.2f",tip + (Double(bill_amount_entry.text!) ?? 0))
        
        
    }

    
}
