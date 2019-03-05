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
        let str = self.textField.text
        addingItemsToDictionaries(str: str)
        if str == "Shopping"{
            for (key,value) in Shopping{
                textArea.text = "Shopping \(value) $\(key)"
            }
        }else if str == "Entertainment"{
            for (key,value) in Entertainment{
                textArea.text = "Entertainment \(value) $\(key)"
            }
        }else if str == "Education"{
            for (key,value) in Education{
                textArea.text = "Education \(value) $\(key)"
            }
        }else{
        }
    }

    func addingItemsToDictionaries(str: String?){
        if let newStr = str{
            let newStrArr = newStr.components(separatedBy: String(" "))
            if newStrArr[0].contains("add"){
                let category = newStrArr[1]
                let description = newStrArr[2]
                let amount = newStrArr[3]
                textArea.text = "-> Added \(category) \(description) $\(amount)"
                if category == "Entertainment"{
                    Entertainment[Int(amount)!] = description
                }else if category == "Shopping"{
                    Shopping[Int(amount)!] = description
                }else{
                    Education[Int(amount)!] = description
                }
            }
        }
    }
    func listItemsOfASpecificCatagory(str: String){
        
    }
        
        
//        while true{
//            let str = readLine()
//            if let newStr = str{
//                let newStrArr = newStr.components(separatedBy: String(" "))     //slice the string from blank spaces
//                if newStrArr[0].contains("add"){
//                    let category = newStrArr[1]
//                    let description = newStrArr[2]
//                    let amount = newStrArr[3]
//                    print("Added \(category) \(description) $\(amount)")
//                    if newStr.contains("Entertainment"){
//                        Entertainment[Int(amount)!] = description
//                    }else if newStr.contains("Shopping"){
//                        Shopping[Int(amount)!] = description
//                    }else{
//                        Education[Int(amount)!] = description
//                    }
//                    Entertainment.forEach { (k,v) in list[k] = v }
//                    Education.forEach { (k,v) in list[k] = v }
//                    Shopping.forEach { (k,v) in list[k] = v }
//                }
//                else{
//                    switch newStr{
//                    case "total":
//                        let grandTotal = Array(Entertainment.keys).reduce(0, +) + Array(Shopping.keys).reduce(0, +) + Array(Education.keys).reduce(0, +)
//                        print("Grand Total \(grandTotal)")
//                    case "list":
//                        let sortedAll = Array(list.keys).sorted(by: >)
//                        for i in 0..<sortedAll.count{
//                            print(" \(list[sortedAll[i]]!) $\(sortedAll[i])")
//                        }
//                    case "total \(newStrArr[1])":
//                        if newStrArr[1] == "Entertainment"{
//                            print("Total for Entertainment = $\(Array(Entertainment.keys).reduce(0, +))")
//                        }else if newStrArr[1] == "Shopping"{
//                            print("Total for Shopping = $\(Array(Shopping.keys).reduce(0, +))")
//                        }else if newStrArr[1] == "Education"{
//                            print("Total for Education = $\(Array(Education.keys).reduce(0, +))")
//                        }else{
//                            print("Wrong Category! Choose a different catagory")
//                        }
//                    case "list \(newStrArr[1])":
//                        if newStrArr[1] == "Entertainment"{
//                            for (key,value) in Entertainment{
//                                print("Entertainment \(value) $\(key)")
//                            }
//                        }else if newStrArr[1] == "Shopping"{
//                            for (key,value) in Shopping{
//                                print("Shopping \(value) $\(key)")
//                            }
//                        }else if newStrArr[1] == "Education"{
//                            for (key,value) in Education{
//                                print("Education \(value) $\(key)")
//                            }
//                        }else{
//                            print("Wrong Category! Choose a different catagory")
//                        }
//                    default:
//                        print("I am in default")
//                    }
//                }
//            }
//        }

    @IBAction func Reset(_ sender: Any) {
    }
    
}

