//
//  ViewController.swift
//  keyboard-resignFirstResponder
//
//  Created by shooter on 2/2/15.
//  Copyright (c) 2015 shooter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var nameTxt: UITextField!
  @IBOutlet weak var resultLab: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    nameTxt.placeholder = "邹倩雯"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
    nameTxt.resignFirstResponder() //当手指离开屏幕 取消键盘
  }
  
  @IBAction func okTapped(sender: AnyObject) {
    nameTxt.resignFirstResponder() //取消键盘
    
    resultLab.text = "hi, \(nameTxt.text)"
  }
  

}

