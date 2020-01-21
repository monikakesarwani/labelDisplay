//
//  ViewController.swift
//  labelDisplay
//
//  Created by Anil on 1/21/20.
//  Copyright © 2020 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var display = " A A "
    
    var a: String = ""
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped1(_ sender: UIButton) {
        
        
        if sender.tag == 1 {
            
            guard let text =  label1.text else {
                return}
            
            label1.text = text + display
            a = label1.text!
            print(a)
            
        } else if sender.tag == 2{
            
           var string1 = a.dropLast(2)
            print(string1)
            let realString = String(string1)
                
            if let text = label1.text{
                label1.text = realString
            }
            
        }
    }
        
    
    
    
    func buttonTapped2(_ sender: UIButton) {
    }
    
}


