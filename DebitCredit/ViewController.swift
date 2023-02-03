//
//  ViewController.swift
//  DebitCredit
//
//  Created by Mike on 10.09.2022.
//  Copyright © 2022 iMikeJobs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataArray: [Double] = []
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelList: UILabel!
    @IBOutlet weak var labelTotal: UILabel!
    
//    @IBAction func labelEndAction(_ sender: Any) {
//        if textField.text! != ""{
//        let d = Double(textField.text!)
//            dataArray.append(d!)
//        }
//        
//        textField.text! = ""
//        printData()
//    }
    
    @IBAction func pushAddAction(_ sender: Any) {
        if textField.text! != ""{
        let d = Double(textField.text!)
            dataArray.append(d!)
        }
        textField.text! = ""
        printData()
    }
    
    func printData() {
        var list = ""
        var summ: Double = 0
         
        for item in dataArray {
             summ = summ + item
            list = String(item) + ", " + list 
        }
        labelList.text = list
        labelTotal.text = "Расходы: \(summ)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printData()
        // Do any additional setup after loading the view. printData()
    }

}

