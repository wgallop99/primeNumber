//
//  ViewController.swift
//  What is Prime
//
//  Created by Will Gallop on 11/10/14.
//  Copyright (c) 2014 Will Gallop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Integer: UITextField!
    
    @IBOutlet weak var message: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var isPrime = true
        
        var Integer = number.text.toInt()
        
        if((number) != nil) {
            
            if(Integer<1){
                message.text = "Please enter a positive number!"
            } else {
                
                if(Integer! ==1){
                    message.text = "1 is not prime!"
                } else {
                   
                    for var i = 2; i<Integer; i++{
                        
                        if(Integer! % i == 0){
                            //Number is NOT prime
                            
                            isPrime = false;
                            
                            
                        }
                    }
                    
                    if(isPrime = true) {
                        message.text = "That number is prime!"
                        
                    } else {
                        message.text = "NOT PRIME!"
                    
                    }
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

