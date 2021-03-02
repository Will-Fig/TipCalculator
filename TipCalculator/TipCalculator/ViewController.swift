//
//  ViewController.swift
//  TipCalculator
//
//  Created by William Figueroa on 2/16/21.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var billAmountField: UITextField!
    
    @IBOutlet weak var Amount: UILabel!
    
    @IBOutlet weak var firstPercent: UILabel!
    @IBOutlet weak var firstField: UILabel!
    
    @IBOutlet weak var secondPercent: UILabel!
    @IBOutlet weak var secondField: UILabel!
    
    @IBOutlet weak var thirdPercent: UILabel!
    @IBOutlet weak var thirdField: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func Calculation(_ sender: Any)
    {
        
        if let bill = billAmountField.text
            {
                let billTotal = Double(bill) ?? 0
                    print(billTotal)
            
                firstField.text = String(format: "$%.2f", billTotal * 0.10)
            
                secondField.text = String(format: "$%.2f", billTotal * 0.15)
            
                thirdField.text = String(format: "$%.2f", billTotal * 0.20)
            }
    }
}
