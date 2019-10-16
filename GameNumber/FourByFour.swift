//
//  FourByFour.swift
//  GameNumber
//
//  Created by Kyle Fogerty on 10/15/19.
//  Copyright © 2019 Kyle Fogerty. All rights reserved.
//

import UIKit

class FourByFour: UIViewController {
    
    @IBOutlet weak var Label1 : UILabel!
    @IBOutlet weak var Label2 : UILabel!
    @IBOutlet weak var Label3 : UILabel!
    @IBOutlet weak var Label4 : UILabel!
    @IBOutlet weak var Label5 : UILabel!
    @IBOutlet weak var Label6 : UILabel!
    @IBOutlet weak var Label7 : UILabel!
    @IBOutlet weak var Label8 : UILabel!

    @IBOutlet weak var Field0 : UITextField!
    @IBOutlet weak var Field1 : UITextField!
    @IBOutlet weak var Field2 : UITextField!
    @IBOutlet weak var Field3 : UITextField!
    @IBOutlet weak var Field4 : UITextField!
    @IBOutlet weak var Field5 : UITextField!
    @IBOutlet weak var Field6 : UITextField!
    @IBOutlet weak var Field7 : UITextField!
    @IBOutlet weak var Field8 : UITextField!
    @IBOutlet weak var Field9 : UITextField!
    @IBOutlet weak var Field10 : UITextField!
    @IBOutlet weak var Field11 : UITextField!
    @IBOutlet weak var Field12 : UITextField!
    @IBOutlet weak var Field13 : UITextField!
    @IBOutlet weak var Field14 : UITextField!
    @IBOutlet weak var Field15 : UITextField!
    lazy var fields = [Field0, Field1, Field2, Field3, Field4, Field5, Field6, Field7, Field8, Field9, Field10, Field11, Field12, Field13, Field14, Field15]
    let number0 = Int.random(in:0..<10)
    let number1 = Int.random(in:0..<10)
    let number2 = Int.random(in:0..<10)
    let number3 = Int.random(in:0..<10)
    let number4 = Int.random(in:0..<10)
    let number5 = Int.random(in:0..<10)
    let number6 = Int.random(in:0..<10)
    let number7 = Int.random(in:0..<10)
    let number8 = Int.random(in:0..<10)
    let number9 = Int.random(in:0..<10)
    let number10 = Int.random(in:0..<10)
    let number11 = Int.random(in:0..<10)
    let number12 = Int.random(in:0..<10)
    let number13 = Int.random(in:0..<10)
    let number14 = Int.random(in:0..<10)
    let number15 = Int.random(in:0..<10)
    lazy var numbers = [number0, number1, number2, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15]
    lazy var numberLabel1 = number0 + number4 + number8 + number12
    lazy var numberLabel2 = number1 + number5 + number9 + number13
    lazy var numberLabel3 = number2 + number6 + number10 + number14
    lazy var numberLabel4 = number3 + number7 + number11 + number15
    lazy var numberLabel5 = number0 + number1 + number2 + number3
    lazy var numberLabel6 = number4 + number5 + number6 + number7
    lazy var numberLabel7 = number8 + number9 + number10 + number11
    lazy var numberLabel8 = number12 + number13 + number14 + number15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Index1 = Int.random(in: 0..<16)
        var Index2 = Int.random(in: 0..<16)
        var Index3 = Int.random(in: 0..<16)
        var Index4 = Int.random(in: 0..<16)
        var Index5 = Int.random(in: 0..<16)
        var Index6 = Int.random(in: 0..<16)
        var Index7 = Int.random(in: 0..<16)
        var Index8 = Int.random(in: 0..<16)
        while Index1 == Index2{
            Index2 = Int.random(in: 0..<16)
        }
        while Index3 == Index2 || Index3 == Index1{
            Index3 = Int.random(in: 0..<16)
        }
        while Index4 == Index2 || Index4 == Index1 || Index4 == Index3 {
            Index4 = Int.random(in: 0..<16)
        }
        while Index5 == Index4 || Index5 == Index3 || Index5 == Index2 || Index5 == Index1 {
            Index5 = Int.random(in: 0..<16)
        }
        while Index6 == Index5 || Index6 == Index4 || Index6 == Index3 || Index6 == Index2 || Index6 == Index1{
            Index6 = Int.random(in: 0..<16)
        }
        while(Index7 == Index6 || Index7 == Index5 || Index7 == Index4 || Index7 == Index3 || Index7 == Index2 || Index7 == Index1){
            Index7 = Int.random(in: 0..<16)
        }
        while Index8 == Index7 || Index8 == Index6 || Index8 == Index5 || Index8 == Index4 || Index8 == Index3 || Index8 == Index2 || Index8 == Index1 {
            Index8 = Int.random(in: 0..<16)
        }
        Label1.text = "\(numberLabel1)"
        Label2.text = "\(numberLabel2)"
        Label3.text = "\(numberLabel3)"
        Label4.text = "\(numberLabel4)"
        Label5.text = "\(numberLabel5)"
        Label6.text = "\(numberLabel6)"
        Label7.text = "\(numberLabel7)"
        Label8.text = "\(numberLabel8)"
        fields[Index1]!.text = "\(numbers[Index1])"
        fields[Index1]?.backgroundColor = UIColor.lightGray
        fields[Index2]!.text = "\(numbers[Index2])"
        fields[Index2]?.backgroundColor = UIColor.lightGray
        fields[Index3]!.text = "\(numbers[Index3])"
        fields[Index3]?.backgroundColor = UIColor.lightGray
        fields[Index4]!.text = "\(numbers[Index4])"
        fields[Index4]?.backgroundColor = UIColor.lightGray
        fields[Index5]!.text = "\(numbers[Index5])"
        fields[Index5]?.backgroundColor = UIColor.lightGray
        fields[Index6]!.text = "\(numbers[Index6])"
        fields[Index6]?.backgroundColor = UIColor.lightGray
        fields[Index7]!.text = "\(numbers[Index7])"
        fields[Index7]?.backgroundColor = UIColor.lightGray
        fields[Index8]!.text = "\(numbers[Index8])"
        fields[Index8]?.backgroundColor = UIColor.lightGray
        

    }
    
    @IBAction func Check(_ sender: UIButton) {
        if Field0.hasText && Field1.hasText && Field2.hasText && Field3.hasText && Field4.hasText && Field5.hasText && Field6.hasText && Field7.hasText && Field8.hasText && Field9.hasText && Field10.hasText && Field11.hasText && Field12.hasText && Field13.hasText && Field14.hasText && Field15.hasText{
            let col1 = (Int(Field0.text!))! + (Int(Field4.text!))! + (Int(Field8.text!))! + (Int(Field12.text!))!
            let col2 = (Int(Field1.text!))! + (Int(Field5.text!))! + (Int(Field9.text!))! + (Int(Field13.text!))!
            let col3 = (Int(Field2.text!))! + (Int(Field6.text!))! + (Int(Field10.text!))! + (Int(Field14.text!))!
            let col4 = (Int(Field3.text!))! + (Int(Field7.text!))! + (Int(Field11.text!))! + (Int(Field15.text!))!
            let row1 = (Int(Field0.text!))! + (Int(Field1.text!))! + (Int(Field2.text!))! + (Int(Field3.text!))!
            let row2 = (Int(Field4.text!))! + (Int(Field5.text!))! + (Int(Field6.text!))! + (Int(Field7.text!))!
            let row3 = (Int(Field8.text!))! + (Int(Field9.text!))! + (Int(Field10.text!))! + (Int(Field11.text!))!
            let row4 = (Int(Field12.text!))! + (Int(Field13.text!))! + (Int(Field14.text!))! + (Int(Field15.text!))!
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
            if col4 != numberLabel4{
                correct = false
            }
            if row1 != numberLabel5{
                correct = false
            }
            if row2 != numberLabel6{
                correct = false
            }
            if row3 != numberLabel7{
                correct = false
            }
            if row4 != numberLabel8{
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
    @IBOutlet weak var ViewController: UIView!
    


}
