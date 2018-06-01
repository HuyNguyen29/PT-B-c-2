//
//  ViewController.swift
//  PTBH
//
//  Created by Hoang on 5/14/18.
//  Copyright © 2018 Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfA: UITextField!
    @IBOutlet weak var tfB: UITextField!
    @IBOutlet weak var tfC: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnKetQua(_ sender: UIButton) {
        let A:Double? = Double(tfA.text!)
        let B:Double? = Double(tfB.text!)
        let C:Double? = Double(tfC.text!)
        if A != nil && B != nil && C != nil{
            lblResult.text=calculate(a: A!, b :B!, c: C!)
        }
        else {
            lblResult.text = "Lỗi: Nhập ký tự"
        }
        
    }
    
    func calculate(a: Double, b: Double, c: Double) -> String{
        var result1: Double
        var result2: Double
        
        if a == 0 {
            result1 = round(((-c)/b) * 1000) / 1000
            if b == 0 && a == 0 && c == 0{
                return "Vô số nghiệm"
            }
            if b == 0 && a == 0 {
                
                return "Vô nghiệm"
            }
            
            return  "x = \(result1)"
        }
        else {
            let delta = b * b - 4 * a * c
            if delta < 0 {
                return "Vô nghiệm"
            } else if delta == 0 {
                result1 = -b/(2*a)
                result2 = result1
                return "Nghiệm kép x1= x2= \(result1)"
            } else {
                result1 = round( ((-b + sqrt(delta))/(2*a)) * 1000)/1000
                result2 = round( ((-b - sqrt(delta))/(2*a)) * 1000)/1000
                return "x1  = \(result1) ; x2 =  \(result2)"
            }
        }
        return "Không thể tính toán!"
    }
    
}
