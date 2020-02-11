//
//  ViewController.swift
//  We count!
//
//  Created by xBad_mojox on 08.02.2020.
//  Copyright © 2020 xBad_mojox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numberFromScreen:Double = 0;
    var firstnum:Double = 0;
    var operation:Int = 0;
    var mathSign:Bool = false;
    var a:Int = 1;
    
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(result.text!)!
        
    }
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button2: UIButton!
    
    
    
    
    @IBAction func button(_ sender: UIButton) {
        
        if sender.tag == 16{
            if a == 0{
                a = a + 1
            } else if a == 1{
                a = a + 1
            }else if a == 2{
                a = a + 1
            }else if a == 3{
                a = 1
            }
        }
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstnum = Double(result.text!)!
            if a == 1 {
                Button1.setTitle("+", for: .normal)
                Button2.setTitle("-", for: .normal)
                Button3.setTitle("*", for: .normal)
                Button4.setTitle("/", for: .normal)
                
                
                if sender.tag == 11 { 
                    result.text = "/"
                    
                    
                } else if sender.tag == 12 {
                    result.text = "*"
                    
                    
                } else if sender.tag == 13 {
                    result.text = "-"
                    
                    
                } else if sender.tag == 14 {
                    
                    result.text = "+"
                    
                    
                }
                operation = sender.tag
                mathSign = true
            }else if a == 2 {
                Button1.setTitle("Sin", for: .normal)
                Button2.setTitle("Cos", for: .normal)
                Button3.setTitle("Tan", for: .normal)
                Button4.setTitle("In", for: .normal)
                if sender.tag == 11 {
                                   result.text = "/"
                               } else if sender.tag == 12 {
                                   result.text = "√"
                     
                               } else if sender.tag == 13 {
                                   result.text = "^2"
                                
                               } else if sender.tag == 14 {
                               result.text = "%"
                               }
                               operation = sender.tag
                               mathSign = true
  
        
            } else if a == 3 {
                Button1.setTitle("/", for: .normal)
              
                Button2.setTitle("√", for: .normal)
                Button3.setTitle("^2", for: .normal)
                Button4.setTitle("%", for: .normal)
                if sender.tag == 11 {
                    result.text = "%"
                } else if sender.tag == 12 {
                    result.text = "^2"
      
                } else if sender.tag == 13 {
                    result.text = "√"
                 
                } else if sender.tag == 14 {
                result.text = "/"
                }
                operation = sender.tag
                mathSign = true
            }
          }
        else if sender.tag == 15 {
            if a == 0{
            if operation == 11{
                result.text = String(firstnum / numberFromScreen)
            } else  if operation == 12{
                result.text = String(firstnum * numberFromScreen)
            }else  if operation == 13{
                result.text = String(firstnum - numberFromScreen)
            }else  if operation == 14{
                result.text = String(firstnum + numberFromScreen)
            }
            
            }
            
         else if a == 1{
            if operation == 11{
                           result.text = String(firstnum / numberFromScreen)
                       } else  if operation == 12{
                           result.text = String(firstnum * numberFromScreen)
                       }else  if operation == 13{
                           result.text = String(firstnum - numberFromScreen)
                       }else  if operation == 14{
                           result.text = String(firstnum + numberFromScreen)
                       }
        }else if a == 2{
            if operation == 11{
                           result.text = String(firstnum / numberFromScreen)
                       } else  if operation == 12{
                           result.text = String(firstnum * firstnum * firstnum) //куб корень
                       }else  if operation == 13{
                           result.text = String(firstnum - numberFromScreen)
                       }else  if operation == 14{
                           result.text = String(firstnum + numberFromScreen)
                       }
        }else if a == 3{
            if operation == 11{
                result.text = String(firstnum * 1 / 100) //процент
                       } else  if operation == 12{
                           result.text = String(firstnum * firstnum) //в квадрате
                       }else  if operation == 13{
                           result.text = String(sqrt(firstnum)) // корень
                       }else  if operation == 14{
                           result.text = String(firstnum / numberFromScreen)  //ничего
                       }
        }
        
    
    
    
    
   }
    if sender.tag == 10 {
      result.text = ""
      firstnum = 0
      numberFromScreen = 0
      operation = 0
      }


  }
}

