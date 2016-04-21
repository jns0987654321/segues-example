//
//  ViewController.swift
//  segues-example
//
//  Created by Junior Samaroo on 2016-03-29.
//  Copyright © 2016 Junior Samaroo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadBlue(sender: AnyObject){
        // USE sender to pass data
        var str = "We came from the 1st screen"
        performSegueWithIdentifier("goToBlue", sender: str)
    }

    @IBAction func loadYellow(sender: AnyObject) {
        performSegueWithIdentifier("goToYellow", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // work right before view loads
        // next VC has already been initialized
        segue.destinationViewController
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? BlueVC {
                if let theString = sender as? String {
                    blueVC.transferText = theString
                }
            }
        }
    }

}

