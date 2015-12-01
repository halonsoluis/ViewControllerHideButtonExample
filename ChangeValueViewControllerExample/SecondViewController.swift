//
//  SecondViewController.swift
//  ChangeValueViewControllerExample
//
//  Created by Hugo on 12/1/15.
//  Copyright © 2015 halonso. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initFirstViewController() -> FirstViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewControllerWithIdentifier("FirstViewController") as! FirstViewController
        
        return firstViewController
    }
    
    @IBAction func ShowNextViewWithButton(sender: AnyObject) {
        let firstViewController = initFirstViewController()
        self.presentViewController(firstViewController, animated: true, completion: {
            //This lines will be called after the view is loaded so the code will run
            firstViewController.firstButton.alpha = 1
        })
    }
    
    @IBAction func ShowNextViewWithoutButton(sender: AnyObject) {
        let firstViewController = initFirstViewController()
        self.presentViewController(firstViewController, animated: true, completion: {
            //This lines will be called after the view is loaded so the code will run
            firstViewController.firstButton.alpha = 0
        })
    }
    
    
    @IBAction func ShowNextViewWithButtonInit(sender: AnyObject) {
        let firstViewController = initFirstViewController()
        
        firstViewController.showButton = true
        
        self.presentViewController(firstViewController, animated: true, completion: nil)
    }
    
    @IBAction func ShowNextViewWithoutButtonInit(sender: AnyObject) {
        let firstViewController = initFirstViewController()
        
        firstViewController.showButton = false
        
        self.presentViewController(firstViewController, animated: true, completion: nil)
    }
}