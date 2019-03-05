//
//  ViewController.swift
//  Milestone_2
//
//  Created by Diwakar Sharma on 4/3/19.
//  Copyright © 2019 Diwakar Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Entertainment = [Int:String]()
    var Shopping = [Int:String]()
    var Education = [Int:String]()
    var list = [Int:String]()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textArea: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Clear(_ sender: Any) {
    }
    
    @IBAction func Enter(_ sender: Any) {
        textArea.text = "->\(self.textField.text ?? " ")"
    }
    @IBAction func Reset(_ sender: Any) {
    }
    
}

