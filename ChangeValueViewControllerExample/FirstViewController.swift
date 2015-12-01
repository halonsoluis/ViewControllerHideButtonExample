//
//  ViewController.swift
//  ChangeValueViewControllerExample
//
//  Created by Hugo on 12/1/15.
//  Copyright © 2015 halonso. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstButton: UIButton!
   
    var showButton = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        if showButton {
            firstButton.alpha = 1
        }else {
            firstButton.alpha = 0
        }
    }

    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}

