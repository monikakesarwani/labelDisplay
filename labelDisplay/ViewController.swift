//
//  ViewController.swift
//  labelDisplay
//
//  Created by Anil on 1/21/20.
//  Copyright © 2020 kesarwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var display = " AAA "
    
    var storeDisplay1 = [String]()
    var storeDisplay2 = [String]()
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func buttonTapped1(_ sender: UIButton) {
        
        if sender.tag == 1 {
            if var tmp = label1.text{
                label1.text = tmp + display
                //append string into a array
                storeDisplay1.append(tmp)
                //print(storeDisplay1)
            }
        } else if sender.tag == 2{
            label1.text = storeDisplay1.popLast()
        }
    }



@IBAction func buttonTapped2(_ sender: UIButton) {
    if sender.tag == 3 {
            
            if var tmp = label2.text{
                label2.text = tmp + display
                storeDisplay2.append(tmp)
                print(storeDisplay2)
            }

        } else if sender.tag == 4{
            label2.text = storeDisplay2.popLast()
            
        }
}

//added this button to clean and retest
@IBAction func cleanButton(_ sender: UIButton) {
    
    label1.text = ""
    label2.text = ""
}


}




