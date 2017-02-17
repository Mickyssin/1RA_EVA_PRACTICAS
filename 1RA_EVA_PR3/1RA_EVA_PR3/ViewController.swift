//
//  ViewController.swift
//  1RA_EVA_PR3
//
//  Created by MIGUEL ANGEL on 16/02/17.
//  Copyright © 2017 MIGUEL ANGEL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblAccss: UILabel!
    
    @IBOutlet weak var txtID: UITextField!
    
    @IBOutlet weak var txtPass: UITextField!
    
    let userID = "mike"
    let pass = "123"
    
    
    @IBAction func btnSnd(sender: AnyObject) {
        var sTxtID = txtID.text
        var sTxtPass = txtPass.text
        if sTxtID==userID && sTxtPass==pass{
            let acDialog = UIAlertController(title: "LogIn", message: "Bienvenido "+txtID.text!+"do you want to proceed?", preferredStyle: .Alert)
            
            let btnY = UIAlertAction(title: "Yes", style: .Default, handler: nil)
            let btnN = UIAlertAction(title: "No", style: .Cancel, handler: nil)
            
            acDialog.addAction(btnY)
            acDialog.addAction(btnN)
            
            presentViewController(acDialog, animated: true, completion: nil)
            
            lblAccss.text = ""
            
        }else{
            lblAccss.text = "Your userID or password is wrong."
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

