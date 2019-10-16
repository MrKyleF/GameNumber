//
//  ThreeByThree.swift
//  GameNumber
//
//  Created by Kyle Fogerty on 10/15/19.
//  Copyright © 2019 Kyle Fogerty. All rights reserved.
//

import UIKit

class ThreeByThree: UIViewController {

    // Text fields
    @IBOutlet weak var Field0 : UITextField!
    
    @IBOutlet weak var Field1 : UITextField!
    
    @IBOutlet weak var Field2 : UITextField!
    
    @IBOutlet weak var Field3 : UITextField!
    
    @IBOutlet weak var Field4 : UITextField!
    
    @IBOutlet weak var Field5 : UITextField!
    
    @IBOutlet weak var Field6 : UITextField!
    
    @IBOutlet weak var Field7 : UITextField!
    
    @IBOutlet weak var Field8 : UITextField!
    // Text field array
    lazy var textFields = [Field0, Field1, Field2, Field3, Field4, Field5, Field6, Field7, Field8]
    // Label Outlets
    @IBOutlet weak var Label1 : UILabel!
    
    @IBOutlet weak var Label2 : UILabel!
    
    @IBOutlet weak var Label3 : UILabel!
    
    @IBOutlet weak var Label4 : UILabel!
    
    @IBOutlet weak var Label5 : UILabel!
    
    @IBOutlet weak var Label6 : UILabel!
    
    let number0 = Int.random(in: 0..<10)
    let number1 = Int.random(in: 0..<10)
    let number2 = Int.random(in: 0..<10)
    let number3 = Int.random(in: 0..<10)
    let number4 = Int.random(in: 0..<10)
    let number5 = Int.random(in: 0..<10)
    let number6 = Int.random(in: 0..<10)
    let number7 = Int.random(in: 0..<10)
    let number8 = Int.random(in: 0..<10)
    lazy var numbers = [number0, number1, number2, number3, number4, number5, number6, number7, number8]
    lazy var numberLabel1 = number0 + number3 + number6
    lazy var numberLabel2 = number1 + number4 + number7
    lazy var numberLabel3 = number2 + number5 + number8
    lazy var numberLabel4 = number0 + number1 + number2
    lazy var numberLabel5 = number3 + number4 + number5
    lazy var numberLabel6 = number6 + number7 + number8
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Index1 = Int.random(in: 0..<9)
        var Index2 = Int.random(in: 0..<9)
        var Index3 = Int.random(in: 0..<9)
        while Index1 == Index2{
            Index2 = Int.random(in: 0..<9)
        }
        while Index3 == Index1 || Index3 == Index2{
            Index3 = Int.random(in: 0..<9)
        }
        Label1.text = "\(numberLabel1)"
        Label2.text = "\(numberLabel2)"
        Label3.text = "\(numberLabel3)"
        Label4.text = "\(numberLabel4)"
        Label5.text = "\(numberLabel5)"
        Label6.text = "\(numberLabel6)"
        textFields[Index1]!.text = "\(numbers[Index1])"
        textFields[Index1]?.backgroundColor = UIColor.lightGray
        textFields[Index2]!.text = "\(numbers[Index2])"
        textFields[Index2]?.backgroundColor = UIColor.lightGray
        textFields[Index3]!.text = "\(numbers[Index3])"
        textFields[Index3]?.backgroundColor = UIColor.lightGray
        
    }
    @IBAction func Checker(_ sender: UIButton) {
        if Field0.hasText && Field1.hasText && Field2.hasText && Field3.hasText && Field4.hasText && Field5.hasText && Field6.hasText && Field7.hasText && Field8.hasText{
            let col1 = (Int(Field0.text!))! + (Int(Field3.text!))! + (Int(Field6.text!))!
            let col2 = (Int(Field1.text!))! + (Int(Field4.text!))! + (Int(Field7.text!))!
            let col3 = (Int(Field2.text!))! + (Int(Field5.text!))! + (Int(Field8.text!))!
            let row1 = (Int(Field0.text!))! + (Int(Field1.text!))! + (Int(Field2.text!))!
            let row2 = (Int(Field3.text!))! + (Int(Field4.text!))! + (Int(Field5.text!))!
            let row3 = (Int(Field6.text!))! + (Int(Field7.text!))! + (Int(Field8.text!))!
            var correct = true
            if col1 != numberLabel1{
                correct = false
            }
            if col2 != numberLabel2{
                correct = false
            }
            if col3 != numberLabel3{
                correct = false
            }
            if row1 != numberLabel4{
                correct = false
            }
            if row2 != numberLabel5{
                correct = false
            }
            if row3 != numberLabel6{
                correct = false
            }
            if(correct == true){
                ViewController.backgroundColor = UIColor.green
            }
            else{
                 ViewController.backgroundColor = UIColor.red
            }
        }
        else{
            ViewController.backgroundColor = UIColor.orange
        }
        
            
        }
        //output.text = String(Int(input1.text!)! + Int(input2.text!)!)
    @IBOutlet weak var ViewController: UIView!
}
    


