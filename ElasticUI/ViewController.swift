//
//  ViewController.swift
//  ElasticUI
//
//  Created by Daniel Tavares on 13/04/2015.
//  Copyright (c) 2015 Daniel Tavares. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let elatis = ElasticTextField(frame: CGRectMake(0,0,200,30))
    elatis.center = self.view.center
    elatis.delegate  = self
    self.view.addSubview(elatis)
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
  }
   
    func textFieldDidBeginEditing(textField: UITextField) {
        print("开始\(textField)")
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        print("end\(textField)")
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
       
        if textField.text?.characters.count == 5 {
            return false
            
        }else{
        
            return true
        }
    
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        print("改变\(textField.text),,,,,\(string)")
        
        
        return true
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

