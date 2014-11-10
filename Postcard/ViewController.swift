//
//  ViewController.swift
//  Postcard
//
//  Created by Seth Weaver on 11/5/14.
//  Copyright (c) 2014 Seth Weaver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var enterMessageField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageField.text
        messageLabel.textColor = UIColor.blueColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameField.text + ","
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageField.text = ""
        enterMessageField.resignFirstResponder()
        enterMessageField.hidden = true
        
        enterNameField.text = ""
        enterNameField.resignFirstResponder()
        enterNameField.hidden = true
        
        sendMailButton.setTitle("Sent", forState: UIControlState.Normal)
        sendMailButton.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
        sendMailButton.setTitleShadowColor(UIColor.grayColor(), forState: UIControlState.Normal)
        sendMailButton.backgroundColor = UIColor.clearColor()
        
    }


}

