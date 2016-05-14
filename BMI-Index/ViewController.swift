//
//  ViewController.swift
//  BMI-Index
//
//  Created by Shanseevan Kanagaratnam on 11.05.16.
//  Copyright © 2016 Shanseevan Kanagaratnam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var kgField: UITextField!
    
    
    
    @IBOutlet weak var cmField: UITextField!
    
    @IBOutlet weak var kgSlider: UISlider!

    
    @IBOutlet weak var cmSlider: UISlider!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    @IBAction func calculateTapped(sender: AnyObject) {
        
        // kg / m^2
        
        let kgValue = Int(kgField.text!)
        let cmValue = Int(cmField.text!)
        
        var output: String?
        
        if kgValue != nil && cmValue != nil{
        
            let sizeInMeter = Double(cmValue!) / 100
        
            let bmi = Int(Double(kgValue!) / (sizeInMeter * sizeInMeter))
            
            
            output = "Dein BMI: \(bmi)"
        
        } else {
            
            output = "CM oder KG nicht lesbar"
            
        }
        
        if output != nil {
            
            outputLabel.hidden = false
            outputLabel.text = output
            
        }
        
        
    }
    
    
    
    @IBAction func resetTapped(sender: AnyObject) {

        outputLabel.hidden = true
        kgField.text = "70"
        kgSlider.value = 70
        cmField.text = "170"
        cmSlider.value = 170
        
    }
    
    
    
    @IBAction func kgSet(sender: AnyObject) {
        kgField.text = "\(Int(kgSlider.value))"
        
        
    }
    
    
    @IBAction func cmSet(sender: AnyObject) {
        cmField.text = "\(Int(cmSlider.value))"
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

