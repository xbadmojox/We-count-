//
//  Obiem.swift
//  We count!
//
//  Created by xBad_mojox on 12.02.2020.
//  Copyright © 2020 xBad_mojox. All rights reserved.
//

import UIKit

class Obiem: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
  
    
let array = ["Liter","Milliliter","Imperial gallon","Imperial quart","Imperial pint","Imperial cup"]
    let array1 = ["Liter","Milliliter","Imperial gallon","Imperial quart","Imperial pint","Imperial cup"]
    @IBOutlet weak var piker1: UIPickerView!
    @IBOutlet weak var piker2: UIPickerView!
    @IBOutlet weak var TextView: UITextField!
    @IBOutlet weak var TextView2: UITextField!

    var a = 1
    var b = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        piker1.delegate = self
        piker1.dataSource = self
        piker2.delegate = self
        piker2.dataSource = self
         TextView2.text = "1"
         TextView.text = "1"
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if pickerView == piker1{
             switch row {
            case 0:
                a = 1
                
             case 1:
                a = 2
                   
                case 2:
                a = 3
                case 3:
                a = 4
                case 4:
                a = 5
                case 5:
                a = 6
                  
             default: break
            }
        } else if pickerView == piker2 {
            switch row {
            case 0:
                b = 1
                  
             case 1:
                b = 2
               
                case 2:
                b = 3
                case 3:
                a = 4
                case 4:
                a = 5
                case 5:
                a = 6
                
            
             default: break
            }
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if pickerView.tag == 1 {
            return array[row]
        } else if pickerView.tag == 2 {
            return array1[row]
        } else {
             return nil
        }

      }
      
      func numberOfComponents(in piker1: UIPickerView) -> Int{
            return 1
        
      }

      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if pickerView.tag == 1 {
            return array.count
        } else if pickerView.tag == 2 {
            return array1.count
        } else {
            return 0
        }
     }
      
    @IBAction func Button(_ sender: Any) {
        if TextView2.text == ""{
            let alert = UIAlertController(title: "Enter the values!" , message:"", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
        }else{
        let r = TextView2.text
        let g = Double(r ?? "")
        if a == 1 && b == 1 {
            self.TextView.text = String(g!)
        }else if a == 1 && b == 2{
            self.TextView.text = String(g! * 1000)
        }else if a == 1 && b == 3{
            self.TextView.text = String(g! / 4.546)
        }else if a == 1 && b == 4{
            self.TextView.text = String(g! / 1.137)
        }else if a == 1 && b == 5{
            self.TextView.text = String(g! * 1.76)
        }else if a == 1 && b == 6{
            self.TextView.text = String(g! * 3.52)
        }else if a == 2 && b == 1{
            self.TextView.text = String(g! / 1000)
        }else if a == 2 && b == 2{
            self.TextView.text = String(g!)
        }else if a == 2 && b == 3{
            self.TextView.text = String(g! / 4546)
        }else if a == 2 && b == 4{
            self.TextView.text = String(g! / 1137)
        }else if a == 2 && b == 5{
            self.TextView.text = String(g! / 568)
            
    }else if a == 2 && b == 6{
    self.TextView.text = String(g! / 284)
    }else if a == 3 && b == 1{
            self.TextView.text = String(g! * 4.546)
        }else if a == 3 && b == 2{
            self.TextView.text = String(g! * 4546)
        }else if a == 3 && b == 3{
            self.TextView.text = String(g! )
        }else if a == 3 && b == 4{
            self.TextView.text = String(g! * 4)
        }else if a == 3 && b == 5{
            self.TextView.text = String(g! * 8)
            
    }else if a == 3 && b == 6{
    self.TextView.text = String(g! * 16)
            
     }else if a == 4 && b == 1{
            self.TextView.text = String(g! * 1.137)
         }else if a == 4 && b == 2{
             self.TextView.text = String(g! * 1137)
         }else if a == 4 && b == 3{
             self.TextView.text = String(g! / 4)
         }else if a == 4 && b == 4{
             self.TextView.text = String(g!)
         }else if a == 4 && b == 5{
             self.TextView.text = String(g! * 2)
             
     }else if a == 4 && b == 6{
     self.TextView.text = String(g! * 4)
             
      }else if a == 5 && b == 1{
            self.TextView.text = String(g! / 1.76)
                }else if a == 5 && b == 2{
                    self.TextView.text = String(g! * 568)
                }else if a == 5 && b == 3{
                    self.TextView.text = String(g! / 8)
                }else if a == 5 && b == 4{
                    self.TextView.text = String(g! / 2)
                }else if a == 5 && b == 5{
                    self.TextView.text = String(g!)
                    
            }else if a == 5 && b == 6{
            self.TextView.text = String(g! * 2)
                    
             }else if a == 6 && b == 1{
            self.TextView.text = String(g! / 3.52)
                 }else if a == 6 && b == 2{
                     self.TextView.text = String(g! * 284)
                 }else if a == 6 && b == 3{
                     self.TextView.text = String(g! / 16)
                 }else if a == 6 && b == 4{
                     self.TextView.text = String(g! / 4)
                 }else if a == 6 && b == 5{
                     self.TextView.text = String(g! / 2)
                     
             }else if a == 6 && b == 6{
             self.TextView.text = String(g!)
                     
              }
  }
}
     @IBAction func Tab(_ sender: Any) {
        TextView.resignFirstResponder()
        TextView2.resignFirstResponder()
        
    }
    
}

